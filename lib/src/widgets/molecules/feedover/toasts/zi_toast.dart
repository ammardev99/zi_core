import 'package:flutter/material.dart';
import 'zi_toast_style.dart';
import 'zi_toast_type.dart';

class ZiToast extends StatelessWidget {
  final String message;
  final ZiToastType type;

  const ZiToast({
    super.key,
    required this.message,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: ZiToastStyle.background(type),
          borderRadius: ZiToastStyle.radius,
        ),
        child: Text(message, style: ZiToastStyle.textStyle),
      ),
    );
  }
}
