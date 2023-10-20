import 'package:flutter_instagram/src/presentations/tabs/controllers/tabbar_controller.dart';
import 'package:get/get.dart';

class TabBarBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TabBarController());
  }
}
