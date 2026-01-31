import 'package:flutter/material.dart';
import 'zi_snackbar_style.dart';
import 'zi_snackbar_type.dart';

class ZiSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    ZiSnackbarType type = ZiSnackbarType.info,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: ZiSnackbarStyle.background(type),
        content: Text(message),
        action: actionLabel != null
            ? SnackBarAction(
                label: actionLabel,
                onPressed: onAction ?? () {},
              )
            : null,
      ),
    );
  }
}
