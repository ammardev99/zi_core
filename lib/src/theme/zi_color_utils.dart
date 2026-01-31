// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ZiAdoptColor {
  static Color light(Color base, int percent) =>
      Color.alphaBlend(Colors.white.withOpacity(percent / 100), base);

  static Color dark(Color base, int percent) =>
      Color.alphaBlend(Colors.black.withOpacity(percent / 100), base);
}
