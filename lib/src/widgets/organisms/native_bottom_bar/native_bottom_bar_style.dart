import 'package:flutter/material.dart';

class ZiNativeBottomBarStyle {
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? unselectedColor;
  final double iconSize;
  final bool showLabel;

  const ZiNativeBottomBarStyle({
    this.backgroundColor,
    this.selectedColor,
    this.unselectedColor,
    this.iconSize = 24,
    this.showLabel = true,
  });
}
