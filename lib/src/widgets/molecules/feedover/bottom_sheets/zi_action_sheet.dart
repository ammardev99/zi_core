import 'package:flutter/material.dart';

class ZiActionSheet extends StatelessWidget {
  final List<Widget> actions;

  const ZiActionSheet({super.key, required this.actions});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: actions,
      ),
    );
  }
}
