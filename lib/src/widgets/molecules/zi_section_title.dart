// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../theme/zi_typography.dart';

// ignore: must_be_immutable
class ZiSectionTag extends StatelessWidget {
  final String title;
  double marginV;

  ZiSectionTag({super.key, required this.title, this.marginV = 8});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginV, horizontal: 4),
      child: Text(title, style: ZiTextStyles.tag),
    );
  }
}
