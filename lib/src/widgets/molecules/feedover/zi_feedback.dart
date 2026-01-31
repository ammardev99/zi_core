import 'package:flutter/material.dart';
import 'toasts/zi_toast_controller.dart';
import 'snackbars/zi_snackbar.dart';
import 'toasts/zi_toast_type.dart';
import 'snackbars/zi_snackbar_type.dart';

class ZiFeedback {
  // Toasts
  static void toast(
    BuildContext context, {
    required String message,
    ZiToastType type = ZiToastType.info,
    ZiToastPosition position = ZiToastPosition.top,
  }) {
    ZiToastController.show(context, message: message, type: type);
  }

  // Snackbars
  static void snackbar(
    BuildContext context, {
    required String message,
    ZiSnackbarType type = ZiSnackbarType.info,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    ZiSnackbar.show(
      context,
      message: message,
      type: type,
      actionLabel: actionLabel,
      onAction: onAction,
    );
  }
}
