import 'package:flutter/material.dart';

class ZiImageStyle {
  final BorderRadius? radius;
  final BoxBorder? border;
  final Color? backgroundColor;

  const ZiImageStyle({
    this.radius,
    this.border,
    this.backgroundColor,
  });

  static const ZiImageStyle none = ZiImageStyle();
}
