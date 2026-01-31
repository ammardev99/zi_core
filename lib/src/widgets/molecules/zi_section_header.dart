import 'package:flutter/material.dart';
import '../../theme/zi_colors.dart';
import '../../theme/zi_typography.dart';

class ZiSectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onActionTap;
  final String? actionLabel;

  const ZiSectionHeader({
    super.key,
    required this.title,
    this.onActionTap,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: ZiTextStyles.subHeading),
        if (onActionTap != null)
          TextButton(
            onPressed: onActionTap,
            child: Text(
              actionLabel ?? "See All",
              style: ZiTextStyles.caption.copyWith(color: ZiColors.primary),
            ),
          ),
      ],
    );
  }
}
