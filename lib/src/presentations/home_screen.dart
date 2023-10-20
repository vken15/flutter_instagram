import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram", style: GoogleFonts.lobster(fontSize: 32)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                SvgPicture.asset("assets/icons/heart_outline.svg", height: 28),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                SvgPicture.asset("assets/icons/messenger_svg.svg", height: 36),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildFollowedNew(),
            const Divider(
              height: 0,
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(radius: 20),
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
                        child: SvgPicture.asset(
                            "assets/icons/heart_outline.svg",
                            height: 28),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                            "assets/icons/chat_bubble_outline.svg",
                            height: 31),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text.rich(TextSpan(
                        text: "999 lượt thích \nVăn A",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ), children: [
                          TextSpan(text: " ajsodjaosfjaoskfaofkalksfksafjlkasflafjsalkfjsasflajfsalkfjaljkflajlkfsajlkfajlkfajslkjflksafjlkafjsalkfjsaklfajlkfsajlfksajaeflkweajflewafjlkwfjwalkf", style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ))
                        ])),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Xem tất cả 99 bình luận", style: TextStyle(
                      color: Colors.brown,
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("20 tháng 10", style: TextStyle(
                      color: Colors.brown,
                    ),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
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
                  CircleAvatar(radius: 32),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 12,
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
              CircleAvatar(radius: 32),
              Text("Văn A"),
            ],
          ),
        ),
      ],
    );
  }
}
