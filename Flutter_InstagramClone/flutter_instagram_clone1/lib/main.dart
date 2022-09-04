import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone1/color.dart';
import 'package:flutter_instagram_clone1/post.dart';
import 'package:flutter_instagram_clone1/story.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: Row(
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Billabong",
                      fontSize: 35),
                ),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/upload.svg"),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.pushNamed(context, "/messages");
                      }),
                      child: SvgPicture.asset(
                        "assets/icons/as.svg",
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                StoryPage(),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                ),
                Post(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  Widget BottomNavBar() {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/homescreen");
              },
              child: SvgPicture.asset(
                "assets/icons/home1.svg",
                color: Colors.white,
                width: 27,
              ),
            ),
            GestureDetector(
              onTap: (() {}),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.white,
                width: 27,
              ),
            ),
            GestureDetector(
              onTap: (() {}),
              child: SvgPicture.asset(
                "assets/icons/reels.svg",
                color: Colors.white,
                width: 27,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/notifications");
              },
              child: SvgPicture.asset(
                "assets/icons/love.svg",
                color: Colors.white,
                width: 27,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/account");
              },
              child: SvgPicture.asset(
                "assets/icons/account.svg",
                color: Colors.white,
                width: 27,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
