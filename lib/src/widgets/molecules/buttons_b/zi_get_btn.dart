import 'package:zi_core/src/zi_core_io.dart';
import 'variations/zi_button_secondary.dart';
import 'variations/zi_button_outline.dart';
import 'variations/zi_button_primary.dart';
import 'variations/zi_button_chip.dart';
import 'variations/zi_button_icon.dart';
import 'variations/zi_button_text.dart';
import 'package:flutter/material.dart';

enum ZiButtonVariantB {
  primary,
  secondary,
  outline,
  destructive,
  text,
  icon,
  iconFillCircular,
  chip,
}

class ZiGetButtonB {
  static Widget get({
    required ZiButtonVariantB variant,
    required VoidCallback? onTap,
    String? label,
    Widget? icon,
    bool loading = false,
    bool disabled = false,
    bool expand = false,
    ZiButtonStyleB? style,
  }) {
    switch (variant) {
      case ZiButtonVariantB.primary:
        return ZiButtonBPrimary(
          onTap: onTap,
          label: label,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style,
        );

      case ZiButtonVariantB.secondary:
        return ZiButtonBSecondary(
          onTap: onTap,
          label: label,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style,
        );

      case ZiButtonVariantB.outline:
        return ZiButtonBOutline(
          onTap: onTap,
          label: label,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style,
        );

      case ZiButtonVariantB.destructive:
        return ZiButtonBPrimary(
          onTap: onTap,
          label: label,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style?.copyWith(
            backgroundColor: style.backgroundColor ?? Colors.red,
            foregroundColor: style.foregroundColor ?? Colors.white,
          ),
        );

      case ZiButtonVariantB.text:
        return ZiButtonBText(
          onTap: onTap,
          label: label,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style,
        );

      case ZiButtonVariantB.icon:
      case ZiButtonVariantB.iconFillCircular:
        return ZiButtonBIcon(
          onTap: onTap,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style,
          circleBackground: variant == ZiButtonVariantB.iconFillCircular,
        );

      case ZiButtonVariantB.chip:
        return ZiButtonBChip(
          onTap: onTap,
          label: label,
          icon: icon,
          loading: loading,
          disabled: disabled,
          expand: expand,
          style: style,
        );
    }
  }
}
