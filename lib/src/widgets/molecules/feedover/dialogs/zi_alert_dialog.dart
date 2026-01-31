import 'package:flutter/material.dart';
import 'zi_dialog.dart';

class ZiAlertDialog {
  static Future<void> show(
    BuildContext context, {
    required String title,
    required String message,
    String buttonText = "OK",
  }) {
    return showDialog(
      context: context,
      builder: (_) => ZiDialog(
        title: Text(title),
        content: Text(message),
        actions: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
