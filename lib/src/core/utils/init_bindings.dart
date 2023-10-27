import 'package:flutter_instagram/src/presentations/setting/controllers/setting_controller.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SettingController());
  }
}