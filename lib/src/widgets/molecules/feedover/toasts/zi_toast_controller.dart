import 'package:flutter/material.dart';
import 'zi_toast.dart';
import 'zi_toast_type.dart';

class ZiToastController {
  static void show(
    BuildContext context, {
    required String message,
    ZiToastType type = ZiToastType.info,
    ZiToastPosition position = ZiToastPosition.bottom,
    Duration duration = const Duration(seconds: 2),
  }) {
    final overlay = Overlay.of(context);

    late OverlayEntry entry;

    entry = OverlayEntry(
      builder:
          (context) => _AnimatedToast(
            message: message,
            type: type,
            position: position,
            onDismiss: () => entry.remove(),
            duration: duration,
          ),
    );

    overlay.insert(entry);
  }
}

class _AnimatedToast extends StatefulWidget {
  final String message;
  final ZiToastType type;
  final ZiToastPosition position;
  final Duration duration;
  final VoidCallback onDismiss;

  const _AnimatedToast({
    required this.message,
    required this.type,
    required this.position,
    required this.duration,
    required this.onDismiss,
  });

  @override
  State<_AnimatedToast> createState() => _AnimatedToastState();
}

class _AnimatedToastState extends State<_AnimatedToast>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    )..forward();

    Future.delayed(widget.duration, () async {
      await _controller.reverse();
      widget.onDismiss();
    });
  }

  @override
  Widget build(BuildContext context) {
    final offset =
        widget.position == ZiToastPosition.top
            ? const Offset(0, -0.3)
            : const Offset(0, 0.3);

    return Positioned(
      top: widget.position == ZiToastPosition.top ? 50 : null,
      bottom: widget.position == ZiToastPosition.bottom ? 80 : null,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: Tween(begin: offset, end: Offset.zero).animate(_controller),
        child: FadeTransition(
          opacity: _controller,
          child: ZiToast(message: widget.message, type: widget.type),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
