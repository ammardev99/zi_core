import 'package:flutter/material.dart';
import 'package:zi_core/src/zi_core_io.dart';

class ZiButtonBIcon extends StatelessWidget {
  final Widget? icon;
  final VoidCallback? onTap;
  final bool loading;
  final bool disabled;
  final bool expand;
  final ZiButtonStyleB? style;
  final bool circleBackground;

  const ZiButtonBIcon({
    super.key,
    this.icon,
    this.onTap,
    this.loading = false,
    this.disabled = false,
    this.expand = false,
    this.style,
    this.circleBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    final fgColor = style?.foregroundColor ?? Theme.of(context).primaryColor;
    // ignore: deprecated_member_use
    final bgColor =
        style?.backgroundColor ??
        // ignore: deprecated_member_use
        (circleBackground ? fgColor.withOpacity(0.1) : Colors.transparent);

    final buttonChild =
        loading
            ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2, color: fgColor),
            )
            : icon ?? const SizedBox();

    Widget child = SizedBox(
      width: style?.width ?? 48,
      height: style?.height ?? 48,
      child: Center(child: buttonChild),
    );

    if (circleBackground) {
      child = Container(
        width: style?.width ?? 48,
        height: style?.height ?? 48,
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
        child: Center(child: buttonChild),
      );
    }

    return IconButton(
      onPressed: disabled || loading ? null : onTap,
      icon: child,
    );
  }
}
