import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiTabBarB extends StatelessWidget {
  final List<Tab> tabs;
  final TabController? controller;

  const ZiTabBarB({super.key, required this.tabs, this.controller});

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
