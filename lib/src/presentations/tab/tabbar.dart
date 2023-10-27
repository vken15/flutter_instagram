import 'package:flutter_instagram/src/presentations/tab/controllers/tabbar_controller.dart';
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
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              controller.selectedIndex.value = index;
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.selectedIndex.value == 0
                          ? 'assets/icons/home-bold.svg'
                          : 'assets/icons/home-outline.svg',
                      colorFilter: ColorFilter.mode(
                          context.isDarkMode ? Colors.white : Colors.black,
                          BlendMode.srcIn)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.selectedIndex.value == 1
                          ? 'assets/icons/search-bold.svg'
                          : 'assets/icons/search-outline.svg',
                      colorFilter: ColorFilter.mode(
                          context.isDarkMode ? Colors.white : Colors.black,
                          BlendMode.srcIn)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.selectedIndex.value == 2
                          ? 'assets/icons/add-square-bold.svg'
                          : 'assets/icons/add-square-outline.svg',
                      colorFilter: ColorFilter.mode(
                          context.isDarkMode ? Colors.white : Colors.black,
                          BlendMode.srcIn)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.selectedIndex.value == 3
                          ? 'assets/icons/video-play-bold.svg'
                          : 'assets/icons/video-play-outline.svg',
                      colorFilter: ColorFilter.mode(
                          context.isDarkMode ? Colors.white : Colors.black,
                          BlendMode.srcIn)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 18,
                    backgroundColor: ((controller.selectedIndex.value == 4 &&
                                !context.isDarkMode) ||
                            (controller.selectedIndex.value != 4 &&
                                context.isDarkMode))
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
          )),
    );
  }
}
