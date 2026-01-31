// zi_input_style_variant.dart
// --------------------------------------------
// Builds InputDecoration based on ZiInputVariant.
//
// Uses ZiInputStyle for all visual tokens.
// No layout logic here.

import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';
import 'zi_input_style.dart';
import 'zi_input_type.dart';

class ZiInputStyleVariant {
  static InputDecoration build({
    required ZiInputVariant variant,
    required ZiInputStyle style,
    String? label,
    String? hint,
    Widget? prefix,
    Widget? suffix,
    String? errorText,
  }) {
    switch (variant) {
      case ZiInputVariant.filled:
        return InputDecoration(
          hintText: hint,
          errorText: errorText,
          prefixIcon: prefix,
          suffixIcon: suffix,
          filled: true,
          fillColor: style.fillColor,
          contentPadding: style.contentPadding,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(style.radius),
            borderSide: BorderSide.none,
          ),
        );

      case ZiInputVariant.underlined:
        return InputDecoration(
          hintText: hint,
          errorText: errorText,
          prefixIcon: prefix,
          suffixIcon: suffix,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: style.borderColor ?? ZiColors.inputBorder,
            ),
          ),
        );

      case ZiInputVariant.outline:
        return InputDecoration(
          labelText: label,
          hintText: hint,
          errorText: errorText,
          prefixIcon: prefix,
          suffixIcon: suffix,
          contentPadding: style.contentPadding,
          // borders
          border: ziInputOutlineBorder(
            style,
            style.borderColor ?? ZiColors.inputBorder,
          ),
          focusedBorder: ziInputOutlineBorder(
            style,
            style.focusColor ?? ZiColors.inputFocused,
            1.5,
          ),
          errorBorder: ziInputOutlineBorder(
            style,
            style.errorColor ?? ZiColors.inputError,
          ),
        );

      case ZiInputVariant.stacked:
        return InputDecoration(
          hintText: hint,
          errorText: errorText,
          prefixIcon: prefix,
          suffixIcon: suffix,
          contentPadding: style.contentPadding,
          enabledBorder: ziInputOutlineBorder(
            style,
            style.borderColor ?? ZiColors.inputBorder,
          ),
          // borders
          border: ziInputOutlineBorder(
            style,
            style.borderColor ?? ZiColors.inputBorder,
          ),
          focusedBorder: ziInputOutlineBorder(
            style,
            style.focusColor ?? ZiColors.inputFocused,
            1.5,
          ),
          errorBorder: ziInputOutlineBorder(
            style,
            style.errorColor ?? ZiColors.inputError,
          ),
        );
    }
  }
}

// a outline border style widget
OutlineInputBorder ziInputOutlineBorder(
  ZiInputStyle style,
  Color color, [
  double? width,
]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(style.radius),
    borderSide: BorderSide(color: color, width: width ?? 1),
  );
}
