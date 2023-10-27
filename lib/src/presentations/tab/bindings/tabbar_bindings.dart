import 'package:flutter_instagram/src/presentations/profile/controllers/profile_controller.dart';
import 'package:flutter_instagram/src/presentations/search/controllers/search_controller.dart';
import 'package:flutter_instagram/src/presentations/tab/controllers/tabbar_controller.dart';
import 'package:get/get.dart';

class TabBarBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TabBarController());
    Get.put(SearchContentController());
    Get.put(ProfileController());
  }
}
