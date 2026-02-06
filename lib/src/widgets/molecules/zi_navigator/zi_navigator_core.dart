import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

class ZiNavigator {
  ZiNavigator._();

  static Future<T?> push<T>(
    BuildContext context,
    Widget page, {
    ZiPageTransitionType transition = ZiPageTransitionType.nativeAndroid,
  }) {
    return Navigator.push<T>(
      context,
      _buildRoute<T>(page, transition),
    );
  }

  static Future<T?> pushReplace<T>(
    BuildContext context,
    Widget page, {
    ZiPageTransitionType transition = ZiPageTransitionType.nativeAndroid,
  }) {
    return Navigator.pushReplacement<T, T>(
      context,
      _buildRoute<T>(page, transition),
    );
  }

  static void pop<T>(BuildContext context, [T? result]) {
    Navigator.pop<T>(context, result);
  }

  static Future<T?> toName<T>(
    BuildContext context,
    String routeName,
  ) {
    return Navigator.pushNamed<T>(context, routeName);
  }

  static Future<T?> toNameOff<T>(
    BuildContext context,
    String routeName,
  ) {
    return Navigator.pushNamedAndRemoveUntil<T>(
      context,
      routeName,
      (route) => false,
    );
  }

  /// 🔒 INTERNAL – Generic Route Builder
  static Route<T> _buildRoute<T>(
    Widget page,
    ZiPageTransitionType type,
  ) {
    if (type == ZiPageTransitionType.nativeAndroid) {
      return MaterialPageRoute<T>(
        builder: (_) => page,
      );
    }

    return PageRouteBuilder<T>(
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        switch (type) {
          case ZiPageTransitionType.rightToLeft:
            return SlideTransition(
              position: Tween(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );

          case ZiPageTransitionType.leftToRight:
            return SlideTransition(
              position: Tween(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );

          case ZiPageTransitionType.downToTop:
            return SlideTransition(
              position: Tween(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );

          case ZiPageTransitionType.fade:
            return FadeTransition(
              opacity: animation,
              child: child,
            );

          case ZiPageTransitionType.animate:
            return ScaleTransition(
              scale: animation,
              child: child,
            );

          default:
            return child;
        }
      },
    );
  }
}
