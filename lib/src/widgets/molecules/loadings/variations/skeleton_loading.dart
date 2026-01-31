import 'package:flutter/material.dart';
import 'package:zi_core/src/zi_core_io.dart';

class ZiSkeleton extends StatelessWidget {
  final ZiLoadingStyle ziLoadStyle;

  const ZiSkeleton({super.key, required this.ziLoadStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ziLoadStyle.size,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black, // ignored by ShaderMask
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

class ZiShimmerEngine extends StatefulWidget {
  final Widget child;
  final ZiLoadingStyle style;

  const ZiShimmerEngine({super.key, required this.child, required this.style});

  @override
  State<ZiShimmerEngine> createState() => _ZiShimmerEngineState();
}

class _ZiShimmerEngineState extends State<ZiShimmerEngine>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseColor = widget.style.color ?? ZiColors.border;
    final highlightColor = widget.style.backgroundColor ?? ZiColors.grayLight;
    // final baseColor = widget.style.backgroundColor ?? const Color(0xFFEBEBF4);
    // final highlightColor = widget.style.color ?? const Color(0xFFF4F4F4);

    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [baseColor, highlightColor, baseColor],
              stops: const [0.1, 0.3, 0.4],
              transform: _SlidingGradientTransform(offset: _controller.value),
            ).createShader(bounds);
          },
          child: widget.child,
        );
      },
    );
  }
}

// Helper to move the gradient
class _SlidingGradientTransform extends GradientTransform {
  final double offset;
  const _SlidingGradientTransform({required this.offset});

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * offset, 0, 0);
  }
}

////////
