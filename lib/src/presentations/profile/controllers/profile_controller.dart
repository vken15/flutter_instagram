import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with GetSingleTickerProviderStateMixin {
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
}
