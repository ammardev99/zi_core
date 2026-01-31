import 'package:flutter/material.dart';
import '../zi_loading_style.dart';

class ZiCircular extends StatelessWidget {
  final ZiLoadingStyle ziLoadstyle;

  const ZiCircular({super.key, required this.ziLoadstyle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ziLoadstyle.size,
      height: ziLoadstyle.size,
      child: CircularProgressIndicator(
        strokeWidth: ziLoadstyle.strokeWidth,
        value: ziLoadstyle.value,
        color: ziLoadstyle.color,
        backgroundColor: ziLoadstyle.backgroundColor,
      ),
    );
  }
}
