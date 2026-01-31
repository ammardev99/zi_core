import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

class ZiBottomBar extends StatelessWidget {
  final List<TabItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final ZiBottomBarType type;
  final ZiBottomBarStyle style;

  const ZiBottomBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    required this.type,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ZiBottomBarType.inspiredOutsideHexagon:
        return BottomBarInspiredOutside(
          items: items,
          backgroundColor: style.backgroundColor,
          color: style.color,
          colorSelected: style.colorSelected,
          indexSelected: currentIndex,
          animated: style.animated,
          itemStyle: ItemStyle.hexagon,
          chipStyle: const ChipStyle(drawHexagon: true),
          onTap: onTap,
          top: -25,
        );

      case ZiBottomBarType.creativeFloating:
        return BottomBarCreative(
          items: items,
          backgroundColor: style.backgroundColor,
          color: style.color,
          colorSelected: style.colorSelected,
          indexSelected: currentIndex,
          isFloating: true,
          onTap: onTap,
        );

      case ZiBottomBarType.fancy:
        return BottomBarInspiredFancy(
          items: items,
          backgroundColor: style.backgroundColor,
          color: style.color,
          colorSelected: style.colorSelected,
          indexSelected: currentIndex,
          onTap: onTap,
        );

      case ZiBottomBarType.divider:
        return BottomBarDivider(
          items: items,
          backgroundColor: style.backgroundColor,
          color: style.color,
          colorSelected: style.colorSelected,
          indexSelected: currentIndex,
          onTap: onTap,
        );

      default:
        return BottomBarCreative(
          items: items,
          backgroundColor: style.backgroundColor,
          color: style.color,
          colorSelected: style.colorSelected,
          indexSelected: currentIndex,
          onTap: onTap,
        );
    }
  }
}
