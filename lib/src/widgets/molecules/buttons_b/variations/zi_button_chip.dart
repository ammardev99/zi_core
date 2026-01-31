import 'package:flutter/material.dart';
import 'package:zi_core/src/zi_core_io.dart';

class ZiButtonBChip extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool loading;
  final bool disabled;
  final bool expand;
  final ZiButtonStyleB? style;

  const ZiButtonBChip({
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
    final fgColor = style?.foregroundColor ?? Theme.of(context).primaryColor;
    // ignore: deprecated_member_use
    final bgColor = style?.backgroundColor ?? fgColor.withOpacity(0.1);

    return GestureDetector(
      onTap: disabled || loading ? null : onTap,
      child: Container(
        padding:
            style?.padding ??
            const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: style?.borderRadius ?? BorderRadius.circular(16),
        ),
        child:
            loading
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
                  children: [
                    if (icon != null) icon!,
                    if (icon != null && label != null) const SizedBox(width: 6),
                    if (label != null)
                      Text(
                        label!,
                        style:
                            style?.textStyle ??
                            TextStyle(color: fgColor, fontSize: 14),
                      ),
                  ],
                ),
      ),
    );
  }
}
