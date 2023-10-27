import 'package:flutter_instagram/src/presentations/tabs/controllers/tabbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppTabBar extends GetWidget<TabBarController> {
  AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          body: controller.pages[controller.selectedIndex.value],
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.selectedIndex.value,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (index) {
                controller.selectedIndex.value = index;
              },
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(controller.selectedIndex.value == 0
                        ? 'assets/icons/home-bold.svg'
                        : 'assets/icons/home-outline.svg'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(controller.selectedIndex.value == 1
                        ? 'assets/icons/search-bold.svg'
                        : 'assets/icons/search-outline.svg'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(controller.selectedIndex.value == 2
                        ? 'assets/icons/add-square-bold.svg'
                        : 'assets/icons/add-square-outline.svg'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(controller.selectedIndex.value == 3
                        ? 'assets/icons/video-play-bold.svg'
                        : 'assets/icons/video-play-outline.svg'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                      radius: 18,
                      backgroundColor: controller.selectedIndex.value == 4
                      ? Colors.black
                      : Colors.white,
                      child: const CircleAvatar(
                        radius: 16,
                        backgroundImage:
                            AssetImage("assets/images/blank-profile.png"),
                      ),
                    ),
                    label: ''),
              ],
            ),
          )),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: TabBarView(
  //               controller: controller.tabController,
  //               children: const [
  //                 HomeScreen(),
  //                 SearchScreen(),
  //                 Center(),
  //                 Center(),
  //                 ProfileScreen(),
  //               ],
  //             ),
  //       bottomNavigationBar: TabBar(
  //         controller: controller.tabController,
  //         tabs: controller.tabs,
  //         labelColor: MediaQuery.of(context).platformBrightness == Brightness.dark ? Colors.white : Colors.black,
  //         indicator: const BoxDecoration(),
  //       ),
  //   );
  // }
}
