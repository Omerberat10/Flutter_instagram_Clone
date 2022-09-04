import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Account());
}

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "omerberat10",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/upload.svg"),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/icons/de.svg",
                          color: Colors.white,
                          width: 37,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 17,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/yzlm.jpg",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Icon(
                                        Icons.add_circle,
                                        size: 25,
                                        color: Color(0xFF0494F5),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ömer Berat",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: Column(
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: Column(
                          children: [
                            Text(
                              "157",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 17,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 330,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(255, 30, 30, 30)),
                        child: Center(
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(255, 30, 30, 30)),
                        child: Center(
                            child: SvgPicture.asset(
                          "assets/icons/person.svg",
                          color: Colors.white,
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/grid.png",
                      width: 27,
                      color: Colors.white,
                    ),
                    Image.asset(
                      "assets/images/tt.png",
                      width: 35,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 1,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 135,
                      height: 135,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/post2.JPG"))),
                    ),
                    Container(
                      height: 135,
                      width: 2,
                      color: Colors.black,
                    ),
                    Container(
                      width: 135,
                      height: 135,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/post2.JPG"))),
                    ),
                    Container(
                      height: 135,
                      width: 2,
                      color: Colors.black,
                    ),
                    Container(
                      width: 135,
                      height: 135,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/images/post2.JPG"))),
                    ),
                  ],
                )
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
