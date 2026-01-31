import 'package:flutter/material.dart';
import 'zi_spacing.dart';

class ZiInsets {
  ZiInsets._();

  static const EdgeInsets page = EdgeInsets.symmetric(
    horizontal: ZiSpacing.md,
    vertical: ZiSpacing.md,
  );

  static const EdgeInsets card = EdgeInsets.all(ZiSpacing.md);

  static const EdgeInsets button = EdgeInsets.symmetric(
    horizontal: ZiSpacing.md,
    vertical: ZiSpacing.sm,
  );

  static const EdgeInsets buttonSmall = EdgeInsets.symmetric(
    horizontal: ZiSpacing.sm,
    vertical: ZiSpacing.xs,
  );
}
