import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/presentations/home_screen.dart';
import 'package:flutter_instagram/src/presentations/profile/profile_screen.dart';
import 'package:flutter_instagram/src/presentations/search/search_screen.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController
{
  Rx<int> selectedIndex = 0.obs;

  final List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const Center(),
    const Center(),
    const ProfileScreen(),
  ];
}
