import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  Rx<ThemeMode?> dartMode = ThemeMode.system.obs;
}