import 'package:flutter/material.dart';
import 'zi_dialog_style.dart';

class ZiDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final Widget? actions;

  const ZiDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: ZiDialogStyle.radius,
      ),
      child: Padding(
        padding: ZiDialogStyle.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            title,
            const SizedBox(height: 12),
            content,
            if (actions != null) ...[
              const SizedBox(height: 20),
              actions!,
            ]
          ],
        ),
      ),
    );
  }
}
