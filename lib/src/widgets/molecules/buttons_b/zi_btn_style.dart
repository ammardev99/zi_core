import 'package:flutter/material.dart';

enum ZiGradientDirection { leftToRight, topToBottom }

class ZiButtonStyleB {
  final bool expand;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final double? elevation;

  final Color? splashColor;
  final Color? hoverColor;

  final TextStyle? textStyle;
  final double? iconSize;

  final List<Color>? gradientColors;
  final ZiGradientDirection? gradientDirection;

  const ZiButtonStyleB({
    this.expand = false,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.elevation,
    this.splashColor,
    this.hoverColor,
    this.textStyle,
    this.iconSize,
    this.gradientColors,
    this.gradientDirection,
  });

  ZiButtonStyleB copyWith({
    bool? expand,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    double? borderRadius,
    BorderRadius? borderRadiusObj,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
    double? elevation,
    Color? splashColor,
    Color? hoverColor,
    TextStyle? textStyle,
    double? iconSize,
  }) {
    return ZiButtonStyleB(
      expand: expand ?? this.expand,
      width: width ?? this.width,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      borderRadius:
          borderRadiusObj ??
          BorderRadius.circular(
            borderRadius ?? this.borderRadius?.topLeft.x ?? 8,
          ),
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      borderColor: borderColor ?? this.borderColor,
      elevation: elevation ?? this.elevation,
      splashColor: splashColor ?? this.splashColor,
      hoverColor: hoverColor ?? this.hoverColor,
      textStyle: textStyle ?? this.textStyle,
      iconSize: iconSize ?? this.iconSize,
    );
  }
}
