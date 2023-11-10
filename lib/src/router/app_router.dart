
import 'package:flutter_instagram/src/presentations/auth/bindings/auth_bindings.dart';
import 'package:flutter_instagram/src/presentations/auth/login_screen.dart';
import 'package:flutter_instagram/src/presentations/auth/register_screen.dart';
import 'package:flutter_instagram/src/presentations/home_screen.dart';
import 'package:flutter_instagram/src/presentations/profile/profile_screen.dart';
import 'package:flutter_instagram/src/presentations/search/search_screen.dart';
import 'package:flutter_instagram/src/presentations/setting/setting_screen.dart';
import 'package:flutter_instagram/src/presentations/tab/bindings/tabbar_bindings.dart';
import 'package:flutter_instagram/src/presentations/tab/tabbar.dart';
import 'package:get/get.dart';

class AppRouter {
  static const loginScreen = "/login";
  static const registerScreen = "/register";
  static const tabScreen = "/tab";
  static const homeScreen = "/home";
  static const searchScreen = "/search";
  static const profileScreen = "/profile";
  static const settingScreen = "/setting";
  static List<GetPage> pages = [
    GetPage(name: loginScreen, page: () => const LoginScreen(), bindings: [
      AuthBindings(),
    ]),
    GetPage(name: registerScreen, page: () => const RegisterScreen(), bindings: [
      AuthBindings(),
    ]),
    GetPage(name: tabScreen, page: () => AppTabBar(), bindings: [
      TabBarBindings(),
    ]),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: searchScreen, page: () => const SearchScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(name: settingScreen, page: () => const SettingScreen()),
  ];
}