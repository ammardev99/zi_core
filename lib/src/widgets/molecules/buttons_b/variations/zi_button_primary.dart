import 'package:flutter/material.dart';
import 'package:zi_core/src/zi_core_io.dart';

class ZiButtonBPrimary extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool loading;
  final bool disabled;
  final bool expand;
  final ZiButtonStyleB? style;

  const ZiButtonBPrimary({
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
    final bgColor = style?.backgroundColor ?? ZiColors.primary;
    final fgColor = style?.foregroundColor ?? ZiColors.surface;

    final buttonChild = loading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2, color: fgColor),
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
                      TextStyle(
                          color: fgColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                ),
            ],
          );

    return SizedBox(
      width: expand ? double.infinity : style?.width,
      height: style?.height ?? 48,
      child: ElevatedButton(
        onPressed: disabled || loading ? null : onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
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
