import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  final String label;
  final bool showTopDivider;
  final bool showBottomDivider;
  final double marginH;
  final double marginV;
  const SectionDivider({
    super.key,
    required this.label,
    this.marginH = 10,
    this.marginV = 8,
    this.showTopDivider = true,
    this.showBottomDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginH, vertical: marginV),
      child: Column(
        children: [
          Divider(thickness: 4),
          Text(label, style: TextStyle(fontSize: 14)),
          Divider(thickness: 4),
        ],
      ),
    );
  }
}
