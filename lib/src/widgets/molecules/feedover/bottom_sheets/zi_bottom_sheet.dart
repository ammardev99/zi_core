import 'package:flutter/material.dart';
import 'zi_bottom_sheet_style.dart';

class ZiBottomSheet {
  static Future<T?> show<T>(
    BuildContext context, {
    required Widget child,
    bool isScrollControlled = false,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      shape: const RoundedRectangleBorder(
        borderRadius: ZiBottomSheetStyle.radius,
      ),
      builder: (_) => child,
    );
  }
}
