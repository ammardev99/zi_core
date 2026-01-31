import 'package:flutter/material.dart';
import 'zi_snackbar_type.dart';

class ZiSnackbarStyle {
  static Color background(ZiSnackbarType type) {
    switch (type) {
      case ZiSnackbarType.info:
        return Colors.grey.shade500;
      case ZiSnackbarType.success:
        return Colors.green.shade500;
      case ZiSnackbarType.warning:
        return Colors.orange.shade500;
      case ZiSnackbarType.error:
        return Colors.red.shade500;
    }
  }
}
