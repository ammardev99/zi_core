import 'package:flutter/animation.dart';

class ZiMotion {
  ZiMotion._();

  // Durations
  static const Duration fast = Duration(milliseconds: 120);
  static const Duration normal = Duration(milliseconds: 200);
  static const Duration slow = Duration(milliseconds: 300);

  // Curves (Material 3 + One UI friendly)
  static const Curve standard = Curves.easeOutCubic;
  static const Curve emphasized = Curves.easeInOutCubic;
  static const Curve decelerate = Curves.easeOut;
}
