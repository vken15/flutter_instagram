import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              surfaceTintColor: context.isDarkMode ? Colors.black : Colors.white,
              //automaticallyImplyLeading: false,
              title:
                  Text("Instagram", style: GoogleFonts.lobster(fontSize: 32)),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/icons/heart_outline.svg",
                      height: 28,
                      colorFilter: ColorFilter.mode(
                          Get.isDarkMode
                              ? Colors.white
                              : Colors.black,
                          BlendMode.srcIn)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/icons/messenger_svg.svg",
                      height: 36,
                      colorFilter: ColorFilter.mode(
                          Get.isDarkMode
                              ? Colors.white
                              : Colors.black,
                          BlendMode.srcIn)),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: _buildFollowedNew(),
            ),
            const SliverToBoxAdapter(
              child: Divider(height: 1),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _buildStories();
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildStories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("assets/images/blank-profile.png")),
            ),
            Text("Văn A"),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        Image.network(
            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assets/icons/heart_outline.svg",
                  height: 28,
                  colorFilter: ColorFilter.mode(
                      Get.isDarkMode
                          ? Colors.white
                          : Colors.black,
                      BlendMode.srcIn)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assets/icons/chat_bubble_outline.svg",
                  height: 31,
                  colorFilter: ColorFilter.mode(
                      Get.isDarkMode
                          ? Colors.white
                          : Colors.black,
                      BlendMode.srcIn)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.send_outlined, size: 32),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.bookmark_outline, size: 32),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text.rich(TextSpan(
              text: "999 lượt thích\n",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: "Văn A ",
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(
                    text:
                        "ajsodjaosfjaoskfaofkalksfksafjlkasflafjsalkfjsasflajfsalkfjaljkflajlkfsajlkfajlkfajslkjflksafjlkafjsalkfjsaklfajlkfsajlfksajaeflkweajflewafjlkwfjwalkf",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ))
              ])),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Xem tất cả 99 bình luận",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/blank-profile.png"),
              ),
              SizedBox(width: 8),
              Text(
                "Thêm bình luận...",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "20 tháng 10",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }

  Row _buildFollowedNew() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                      radius: 32,
                      backgroundImage:
                          AssetImage("assets/images/blank-profile.png")),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                    ),
                  )
                ],
              ),
              Text("Tin của bạn")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 32,
                  backgroundImage:
                      AssetImage("assets/images/blank-profile.png")),
              Text("Văn A"),
            ],
          ),
        ),
      ],
    );
  }
}
