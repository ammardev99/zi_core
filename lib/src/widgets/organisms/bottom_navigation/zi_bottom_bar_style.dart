import 'package:flutter/material.dart';

class ZiBottomBarStyle {
  final Color backgroundColor;
  final Color color;
  final Color colorSelected;
  final double elevation;
  final bool animated;

  const ZiBottomBarStyle({
    required this.backgroundColor,
    required this.color,
    required this.colorSelected,
    this.elevation = 8,
    this.animated = true,
  });

  /// Zi default (One-UI-safe)
  factory ZiBottomBarStyle.defaultStyle() {
    return const ZiBottomBarStyle(
      backgroundColor: Color(0xFF1752FE),
      color: Color(0xFF96B1FD),
      colorSelected: Colors.white,
    );
  }
}
