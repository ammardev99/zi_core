import 'package:flutter/material.dart';
import 'package:zi_core/src/zi_core_io.dart';

class ZiButtonBOutline extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool loading;
  final bool disabled;
  final bool expand;
  final ZiButtonStyleB? style;

  const ZiButtonBOutline({
    super.key,
    this.label,
    this.icon,
    this.onTap,
    this.loading = false,
    this.disabled = false,
    this.expand = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = style?.borderColor ?? Theme.of(context).primaryColor;
    final fgColor = style?.foregroundColor ?? borderColor;

    final buttonChild = loading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: fgColor,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) icon!,
              if (icon != null && label != null) const SizedBox(width: 8),
              if (label != null)
                Text(
                  label!,
                  style: style?.textStyle ??
                      TextStyle(color: fgColor, fontSize: 14),
                ),
            ],
          );

    return SizedBox(
      width: expand ? double.infinity : style?.width,
      height: style?.height ?? 48,
      child: OutlinedButton(
        onPressed: disabled || loading ? null : onTap,
        style: OutlinedButton.styleFrom(
          foregroundColor: fgColor,
          side: BorderSide(color: borderColor),
          padding: style?.padding ?? const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: style?.borderRadius ?? BorderRadius.circular(8),
          ),
        ),
        child: buttonChild,
      ),
    );
  }
}
