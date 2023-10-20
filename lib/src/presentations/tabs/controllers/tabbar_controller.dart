import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController with GetSingleTickerProviderStateMixin {
  
  final List<Tab> tabs = <Tab>[
    const Tab(icon: Icon(Icons.home)),
    const Tab(icon: Icon(Icons.search)),
    const Tab(icon: Icon(Icons.add_box_outlined)),
    const Tab(icon: Icon(Icons.video_collection_outlined)),
    const Tab(icon: Icon(Icons.home)),
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