import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
                    height: 24),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.menu_rounded, size: 32),
              )
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
                          radius: 36,
                          backgroundImage:
                              AssetImage('assets/images/blank-profile.png'),
                        ),
                        Text("Đăng Khoa")
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
                  _buildCustomElevatedButton(
                      () {}, const Text("Chỉnh sửa trang cá nhân")),
                  _buildCustomElevatedButton(
                      () {}, const Text("Chia sẽ trang cá nhân")),
                  _buildCustomElevatedButton(
                    () {},
                    const Icon(Icons.person_add),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }

  ElevatedButton _buildCustomElevatedButton(
      void Function()? onPressed, Widget child) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white70,
          foregroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))),
      onPressed: onPressed,
      child: child,
    );
  }
}
