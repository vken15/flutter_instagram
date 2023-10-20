import 'package:flutter_instagram/src/presentations/home/home_screen.dart';
import 'package:flutter_instagram/src/presentations/setting_screen.dart';
import 'package:flutter_instagram/src/presentations/tabs/controllers/tabbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTabBar extends GetWidget<TabBarController> {
  const AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
                controller: controller.tabController,
                children: const [
                  HomeScreen(),
                  Center(),
                  Center(),
                  Center(),
                  SettingScreen(),
                ],
              ),
        bottomNavigationBar: TabBar(
          controller: controller.tabController,
          tabs: controller.tabs,
          indicatorColor: MediaQuery.of(context).platformBrightness == Brightness.dark ? Colors.white : Colors.black,
          onTap: (value) {
            //controller.isSearch.value = false;
          },
        ),
    );
  }
}
