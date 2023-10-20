
import 'package:flutter_instagram/src/presentations/home_screen.dart';
import 'package:flutter_instagram/src/presentations/search/search_screen.dart';
import 'package:flutter_instagram/src/presentations/tabs/bindings/tabbar_bindings.dart';
import 'package:flutter_instagram/src/presentations/tabs/tabbar.dart';
import 'package:get/get.dart';

class AppRouter {
  static const tabScreen = "/tab";
  static const homeScreen = "/home";
  static const searchScreen = "/search";
  static List<GetPage> pages = [
    GetPage(name: tabScreen, page: () => const AppTabBar(), bindings: [
      TabBarBindings(),
    ]),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: searchScreen, page: () => const SearchScreen()),
  ];
}