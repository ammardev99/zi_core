import 'package:flutter/material.dart';
import 'zi_dialog.dart';

class ZiConfirmDialog {
  static Future<bool> show(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = "Yes",
    String cancelText = "Cancel",
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => ZiDialog(
        title: Text(title),
        content: Text(message),
        actions: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(cancelText),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(confirmText),
            ),
          ],
        ),
      ),
    );
    return result ?? false;
  }
}
