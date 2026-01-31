import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiChip extends StatelessWidget {
  final String label;
  final Color? color;
  final VoidCallback? onDelete;

  const ZiChip({super.key, required this.label, this.color, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: ZiTextStyles.caption.copyWith(color: ZiColors.white)),
      backgroundColor: color ?? ZiColors.primary,
      deleteIcon: onDelete != null ? const Icon(Icons.close, size: 14, color: ZiColors.white) : null,
      onDeleted: onDelete,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ZiRadius.sm)),
    );
  }
}