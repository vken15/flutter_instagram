import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchContentController extends GetxController {
  Rx<bool> isSearch = false.obs;
  Rx<TextEditingController> searchContent = Rx(TextEditingController());
  final FocusNode searchTextFocus = FocusNode();
}