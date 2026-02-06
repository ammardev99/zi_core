import 'package:flutter/material.dart';
import '../../zi_widgets_io.dart';

BottomNavigationBarType ziGetNativeBottomBarType(ZiNativeBottomBarType type) {
  switch (type) {
    case ZiNativeBottomBarType.shifting:
      return BottomNavigationBarType.shifting;
    case ZiNativeBottomBarType.fixed:
      return BottomNavigationBarType.fixed;
  }
}
