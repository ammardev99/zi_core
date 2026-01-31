import 'package:flutter/material.dart';
import 'zi_toast_type.dart';

class ZiToastStyle {
  static Color background(ZiToastType type) {
    switch (type) {
      case ZiToastType.info:
        return Colors.grey..shade500;
      case ZiToastType.success:
        return Colors.green.shade500;
      case ZiToastType.warning:
        return Colors.orange.shade500;
      case ZiToastType.error:
        return Colors.red.shade500;
    }
  }

  static const BorderRadius radius = BorderRadius.all(Radius.circular(8));

  static const TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
