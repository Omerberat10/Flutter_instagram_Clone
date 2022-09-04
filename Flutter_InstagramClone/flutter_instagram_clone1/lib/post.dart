import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post1("433", "433.webp", "post1", " HARY KANEE"),
        Divider(
          color: Colors.white.withOpacity(0.3),
        ),
        Post1("Sinan Engin", "sinan.jpg", "post2",
            " Saçlarını Hangi Şampuanla yıkıyorsun ? "),
        Divider(
          color: Colors.white.withOpacity(0.3),
        ),
        Post1("Fenerbahçe", "fb.png", "post3", " BATMAN"),
      ],
    );
  }

  Widget Post1(String title, String photo, String post, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/${photo}"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/${post}.JPG"),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/loved.svg",
                    width: 27,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    "assets/icons/comment.svg",
                    width: 27,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    "assets/icons/paylasim.svg",
                    width: 27,
                    color: Colors.white,
                  )
                ],
              ),
              SvgPicture.asset(
                "assets/icons/save.svg",
                width: 27,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Liked By",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: " Omerberat10",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: " and",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: " Others",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ]),
            )),
        SizedBox(
          height: 12,
        ),
        Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: content,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ]),
            )),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Text(
            "View 10 comments",
            style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/yzlm.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Add a comment ...",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "😂",
                    style: TextStyle(fontSize: 19),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "❤️",
                    style: TextStyle(fontSize: 19),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "👍🏻",
                    style: TextStyle(fontSize: 19),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Text(
            "1 day ago",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
