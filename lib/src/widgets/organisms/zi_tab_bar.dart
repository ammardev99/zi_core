import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiTabBar extends StatelessWidget {
  final List<Tab> tabs;
  final TabController? controller;

  const ZiTabBar({super.key, required this.tabs, this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: tabs,
      indicatorColor: ZiColors.primary,
      labelColor: ZiColors.primary,
      unselectedLabelColor: ZiColors.gray,
      labelStyle: ZiTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
