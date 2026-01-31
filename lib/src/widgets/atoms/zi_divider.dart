import 'package:flutter/material.dart';
import '../../theme/zi_colors.dart';
import '../../theme/zi_spacing.dart';

class ZiDivider extends StatelessWidget {
  final double thickness;
  final double verticalSpacing;

  const ZiDivider({
    super.key,
    this.thickness = 1,
    this.verticalSpacing = ZiSpacing.md16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalSpacing),
      child: Divider(
        thickness: thickness,
        color: ZiColors.gray,
      ),
    );
  }
}
