import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Notifications());
}

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Image.asset(
                  "assets/images/back.png",
                  width: 27,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13, left: 12, right: 12),
                  child: Text(
                    "This Week",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13, left: 12, right: 12),
                  child: Text(
                    "This Month",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
                SizedBox(
                  height: 15,
                ),
                notification(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  Widget notification() {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/ft.webp"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "fatihterim ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: "gönderini beğendi.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: " 2d",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ]),
            ),
          ),
          Spacer(),
          Container(
            width: 40,
            height: 45,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/post1.JPG"),
                    fit: BoxFit.cover)),
          ),
        ],
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
