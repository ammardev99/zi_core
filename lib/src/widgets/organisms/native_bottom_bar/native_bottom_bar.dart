import 'package:flutter/material.dart';
import '../../zi_widgets_io.dart';

// TODO: Use Native Bottom bar
class ZiNativeBottomBar extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;

  final ZiNativeBottomBarType type;
  final ZiNativeBottomBarVariant variant;
  final ZiNativeBottomBarStyle? style;

  const ZiNativeBottomBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.type = ZiNativeBottomBarType.fixed,
    this.variant = ZiNativeBottomBarVariant.iconWithLabel,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: items,
      onTap: onTap,
      type: ziGetNativeBottomBarType(type),
      backgroundColor: style?.backgroundColor,
      selectedItemColor: style?.selectedColor,
      unselectedItemColor: style?.unselectedColor,
      iconSize: style?.iconSize ?? 24,
      showSelectedLabels: variant == ZiNativeBottomBarVariant.iconWithLabel,
      showUnselectedLabels: variant == ZiNativeBottomBarVariant.iconWithLabel,
    );
  }
}
