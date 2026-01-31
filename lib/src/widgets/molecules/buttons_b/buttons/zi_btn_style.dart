import 'package:flutter/material.dart';

import '../../../../zi_core_io.dart';

enum ZiGradientDirection { topToBottom, leftToRight, topLeftToBottomRight }

class ZiBtnStyle {
  // layout
  final bool expand;
  final double? width;
  final double? height;

  // spacing & shape
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;

  // colors
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;

  // effects
  final Color? splashColor;
  final Color? hoverColor;

  // text & icon
  final TextStyle? textStyle;
  final double? iconSize;

  // gradient (optional)
  final List<Color>? gradientColors;
  final ZiGradientDirection? gradientDirection;

  const ZiBtnStyle({
    this.expand = false, // ❗ NOT full width by default
    this.width,
    this.height,
    this.padding,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(ZiRadius.button),
    ),
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.splashColor,
    this.hoverColor,
    this.textStyle,
    this.iconSize,
    // NEW
    this.gradientColors,
    this.gradientDirection,
  });

  /* ----------------------------
   *  PREDEFINED STYLES
   * ---------------------------- */

  /// Fill / Primary button style
  factory ZiBtnStyle.fill({
    Color? backgroundColor,
    Color? foregroundColor,
    bool expand = false,
    double? borderRadius, // accept double directly
  }) {
    return ZiBtnStyle(
      expand: expand,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      padding: ZiSpacing.btnPadding,
      borderRadius: BorderRadius.circular(borderRadius ?? ZiRadius.button),
    );
  }

  /// Outline style (for later)
  factory ZiBtnStyle.outline({
    Color? borderColor,
    Color? foregroundColor,
    bool expand = false,
    double? borderRadius, // accept double
  }) {
    return ZiBtnStyle(
      expand: expand,
      borderColor: borderColor,
      foregroundColor: foregroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      borderRadius: BorderRadius.circular(borderRadius ?? ZiRadius.button),
    );
  }

  /// Icon style (for later)
  factory ZiBtnStyle.icon({
    double? iconSize,
    double? borderRadius, // accept double
  }) {
    return ZiBtnStyle(
      iconSize: iconSize ?? ZiIconSizes.md,
      padding: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(borderRadius ?? ZiRadius.button),
    );
  }

  /// Gradient button style
  factory ZiBtnStyle.gradient({
    required List<Color> colors,
    ZiGradientDirection direction = ZiGradientDirection.leftToRight,
    bool expand = false,
    double? borderRadius, // accept double
  }) {
    return ZiBtnStyle(
      expand: expand,
      gradientColors: colors,
      gradientDirection: direction,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      borderRadius: BorderRadius.circular(borderRadius ?? ZiRadius.button),
    );
  }

  ///  COPY WITH

  ZiBtnStyle copyWith({
    bool? expand,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    double? borderRadius, // accept double
    BorderRadius? borderRadiusObj, // optional full BorderRadius object
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
    Color? splashColor,
    Color? hoverColor,
    TextStyle? textStyle,
    double? iconSize,
  }) {
    return ZiBtnStyle(
      expand: expand ?? this.expand,
      width: width ?? this.width,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      borderRadius:
          borderRadiusObj ??
          BorderRadius.circular(borderRadius ?? this.borderRadius!.topLeft.x),
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      borderColor: borderColor ?? this.borderColor,
      splashColor: splashColor ?? this.splashColor,
      hoverColor: hoverColor ?? this.hoverColor,
      textStyle: textStyle ?? this.textStyle,
      iconSize: iconSize ?? this.iconSize,
    );
  }
}
