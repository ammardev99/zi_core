// zi_input_style.dart
// --------------------------------------------
// Design token holder for Zi Inputs.
//
// Contains ONLY raw visual values.
// No logic, no variant decisions.

import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

class ZiInputStyle {
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusColor;
  final Color? errorColor;

  final double radius;
  final EdgeInsets contentPadding;

  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;

  const ZiInputStyle({
    this.fillColor,
    this.borderColor,
    this.focusColor,
    this.errorColor,
    this.radius = ZiRadius.inputsm,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 12,
    ),
    this.labelStyle,
    this.hintStyle,
    this.textStyle,
  });

  /// Default system style
  static ZiInputStyle get system => ZiInputStyle(
    fillColor: ZiColors.inputBackground,
    borderColor: ZiColors.inputBorder,
    focusColor: ZiColors.inputFocused,
    errorColor: ZiColors.inputError,
    labelStyle: ZiTextStyles.inputLabel,
    hintStyle: ZiTextStyles.inputHint,
    textStyle: ZiTextStyles.input,
  );
}
