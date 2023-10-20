
import 'package:flutter_instagram/src/presentations/home/bindings/home_bindings.dart';
import 'package:flutter_instagram/src/presentations/home/home_screen.dart';
import 'package:flutter_instagram/src/presentations/tabs/bindings/tabbar_bindings.dart';
import 'package:flutter_instagram/src/presentations/tabs/tabbar.dart';
import 'package:get/get.dart';

class AppRouter {
  static const homeScreen = "/home";
  static const tabScreen = "/tab";
  static List<GetPage> pages = [
    GetPage(name: homeScreen, page: () => const HomeScreen(), bindings: [
      HomeBindings(),
    ]),
    GetPage(name: tabScreen, page: () => const AppTabBar(), bindings: [
      TabBarBindings(),
    ]),
  ];
}