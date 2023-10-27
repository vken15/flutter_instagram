import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/router/app_router.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(icon: Icon(Icons.grid_on, size: 28)),
    const Tab(icon: Icon(Icons.person_pin_outlined, size: 32)),
  ];
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  final List<Widget> menuItems = <Widget>[
    GestureDetector(
      onTap: () {
        Get.toNamed(AppRouter.settingScreen);
      },
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Cài đặt", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Threads", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Hoạt động của bạn", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Kho lưu trữ", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Mã QR", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Đã lưu", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Giám sát", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Đơn đặt hàng và thanh toán", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Bạn thân", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    const SizedBox(height: 8),
    GestureDetector(
      onTap: () {},
      child: const Row(
        children: [
          Icon(Icons.settings, size: 32),
          SizedBox(width: 8),
          Text("Yêu thích", style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
  ];
}
