import 'package:flutter/material.dart';

import '../../../zi_core_io.dart';

class ZiLoadingStyle {
  final double scaleX;
  // layout
  final int? count; // replaces value for skeleton
  final int? columns; // grid only
  final double spacing; // list/grid spacing

  // common
  final double size;
  final Color? color;
  final Color? backgroundColor;

  // progress
  final double strokeWidth;
  final double? value; // 0.0 → 1.0 (optional)

  // text
  final TextStyle? textStyle;
  final bool showPercentage;
  // Circular Loading Style
  const ZiLoadingStyle({
    this.scaleX = 1, // I will implement it later
    this.count,
    this.columns,
    this.spacing = 8,
    this.size = 20,
    this.color,
    this.backgroundColor,
    this.strokeWidth = 2,
    this.value,
    this.textStyle,
    this.showPercentage = false,
  });

  ZiLoadingStyle copyWith({
    double? size,
    Color? color = ZiColors.grayLight,
    Color? backgroundColor = ZiColors.border,
    double? strokeWidth,
    double? value,
    TextStyle? textStyle,
    bool? showPercentage,
  }) {
    return ZiLoadingStyle(
      size: size ?? this.size,
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      value: value ?? this.value,
      textStyle: textStyle ?? this.textStyle,
      showPercentage: showPercentage ?? this.showPercentage,
    );
  }
}
