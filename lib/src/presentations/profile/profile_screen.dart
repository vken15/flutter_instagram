import 'package:flutter/material.dart';
import 'package:flutter_instagram/src/components/app_bottom_sheet.dart';
import 'package:flutter_instagram/src/presentations/profile/controllers/profile_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            surfaceTintColor: context.isDarkMode ? Colors.black : Colors.white,
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "vken15",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assets/icons/add-square-outline.svg",
                    height: 24,
                      colorFilter: ColorFilter.mode(
                          context.isDarkMode
                              ? Colors.white
                              : Colors.black,
                          BlendMode.srcIn)),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppBottomSheet(
                    icon: const Icon(Icons.menu_rounded, size: 32),
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: controller.menuItems,
                    ),
                  )),
            ],
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/blank-profile.png'),
                        ),
                        Text(
                          "Đăng Khoa",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("Bài viết")
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Text(
                        "50",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("Người theo dõi")
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Text(
                        "150",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("Đang theo dõi")
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCustomElevatedButton(context,
                      () {}, const Text("Chỉnh sửa trang cá nhân")),
                  _buildCustomElevatedButton(context,
                      () {}, const Text("Chia sẻ trang cá nhân")),
                  _buildCustomElevatedButton(context,
                    () {},
                    const Icon(Icons.person_add),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Khám phá mọi người",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Xem tất cả",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(right: 1, child: Icon(Icons.close)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 48,
                                backgroundImage: AssetImage(
                                    "assets/images/blank-profile.png"),
                              ),
                              const Text(
                                "Nguyễn Văn B",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Gợi ý cho bạn",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                              const Spacer(),
                              Flexible(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: const Text("    Theo dõi    "),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TabBar(
              controller: controller.tabController,
              tabs: controller.tabs,
              unselectedLabelColor: context.isDarkMode ? Colors.white54 : Colors.black54,
              labelColor: context.isDarkMode ? Colors.white : Colors.black,
              indicatorColor: context.isDarkMode ? Colors.white : Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 450,
              ),
              child: TabBarView(
                controller: controller.tabController,
                children: const [
                  Center(),
                  Center(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCustomElevatedButton(BuildContext context, void Function()? onPressed, Widget child) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.isDarkMode ? Colors.black87 : Colors.white70,
        foregroundColor: context.isDarkMode ? Colors.white : Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
