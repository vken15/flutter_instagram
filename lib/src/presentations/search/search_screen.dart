import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/presentations/search/controllers/search_controller.dart';
import 'package:get/get.dart';

class SearchScreen extends GetWidget<SearchContentController> {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                controller.isSearch.value
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.isSearch.value = false;
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                child: Icon(Icons.arrow_back),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: _buildSearchBar(),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildSearchBar(),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField _buildSearchBar() {
    return TextFormField(
        controller: controller.searchContent.value,
        focusNode: controller.searchTextFocus,
        decoration: const InputDecoration(
            hintText: "Tìm kiếm",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        onTap: () {
          controller.isSearch.value = true;
        },
        onTapOutside: (event) {
          if (controller.searchTextFocus.hasFocus == true) {
            controller.searchTextFocus.unfocus();
            //controller.isSearch.value = false;
          }
        });
  }
}
