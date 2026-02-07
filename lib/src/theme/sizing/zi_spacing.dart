import 'package:flutter/material.dart';

class ZiSpacing {
  ZiSpacing._();

  // Gaps (Numbers)
  static const double none = 0;
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  // Remove
  static const double sm8 = sm;
  static const double md16 = md;
  static const double lg24 = 24;

  static const EdgeInsets btnPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );
  static const EdgeInsets btnPaddingSmall = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 9,
  );
  // Paddings
  static const EdgeInsets smallPadding = EdgeInsets.all(sm8);
  static const EdgeInsets mediumPadding = EdgeInsets.all(md16);
  static const EdgeInsets largePadding = EdgeInsets.all(lg24);

  // Widgets (SizedBoxes)
  static const SizedBox sBox = SizedBox(width: sm8, height: sm8);
  static const SizedBox mBox = SizedBox(width: md16, height: md16);
  static const SizedBox lBox = SizedBox(width: lg24, height: lg24);
}
