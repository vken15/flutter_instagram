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
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                automaticallyImplyLeading: false,
                surfaceTintColor: context.isDarkMode ? Colors.black : Colors.white,
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    controller.isSearch.value
                        ? Stack(
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
                                child: _buildSearchBar(
                                    controller.searchContent.value,
                                    controller.searchTextFocus,
                                    () {}),
                              ),
                            ],
                          )
                        : _buildSearchBar(null, null, () {
                            controller.isSearch.value = true;
                            controller.searchTextFocus.requestFocus();
                          }),
                  ],
                ),
              ),
              if (controller.isSearch.value == false)
                SliverGrid.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: List.generate(
                      24,
                      (index) {
                        return Image.asset("assets/images/picture1.jpg");
                      },
                    )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(
    TextEditingController? controller,
    FocusNode? focus,
    void Function()? onTap,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromARGB(16, 0, 0, 0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
          controller: controller,
          focusNode: focus,
          decoration: const InputDecoration(
              hintText: "Tìm kiếm",
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(12)),
          onTap: onTap),
    );
  }
}
