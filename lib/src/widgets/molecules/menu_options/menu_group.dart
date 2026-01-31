import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

class ZiMenuGroup extends StatelessWidget {
  final List<ZiMenuTile1> tiles;
  final double borderRadius;
  final Color borderColor;
  final Color bgColor;

  const ZiMenuGroup({
    super.key,
    required this.tiles,
    this.borderRadius = 16,
    this.borderColor = ZiColors.border,
    this.bgColor = ZiColors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Material(
          color: bgColor,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(color: ZiColors.border),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(children: tiles),
          ),
        ),
      ),
    );
  }
}
