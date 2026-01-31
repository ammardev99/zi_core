import 'package:flutter/material.dart';
import 'package:zi_core/src/zi_core_io.dart';

class ZiDotsLoading extends StatefulWidget {
  final ZiLoadingStyle ziLoadStyle;

  const ZiDotsLoading({super.key, required this.ziLoadStyle});

  @override
  State<ZiDotsLoading> createState() => _ZiDotsLoadingState();
}

class _ZiDotsLoadingState extends State<ZiDotsLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late int dotCount;

  @override
  void initState() {
    super.initState();

    dotCount = widget.ziLoadStyle.value?.toInt() ?? 3;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        final activeIndex = (_controller.value * dotCount).floor() % dotCount;

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(dotCount, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Opacity(
                opacity: index == activeIndex ? 1 : 0.3,
                child: Container(
                  width: widget.ziLoadStyle.size / 2,
                  height: widget.ziLoadStyle.size / 2,
                  decoration: BoxDecoration(
                    color: widget.ziLoadStyle.color ?? ZiColors.grayLight,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}

//
