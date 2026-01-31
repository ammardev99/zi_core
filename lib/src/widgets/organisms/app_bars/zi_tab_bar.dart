import 'package:flutter/material.dart';
import 'zi_tabs.dart';

class ZiTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;
  final List<ZiTab> tabs;
  final bool isScrollable;

  const ZiTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.isScrollable = true,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: isScrollable,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Theme.of(context).colorScheme.primary,
      tabs: tabs.map((e) => Tab(child: e)).toList(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
