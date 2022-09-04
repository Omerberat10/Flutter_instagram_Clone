import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone1/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                  child: Container(
                    width: 65,
                    height: 65,
                    child: Stack(
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
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
                              width: 19,
                              height: 19,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Icon(
                                Icons.add_circle,
                                size: 19,
                                color: Color(0xFF0494F5),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Your Story",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Story("messi.jpg", "Leo Messi"),
            bosluk(),
            Story("1.jpg", "Michael"),
            bosluk(),
            Story("433.webp", "433"),
            bosluk(),
            Story("ft.webp", "Fatih"),
            bosluk(),
            Story("s.jpg", "Ahmet"),
            bosluk(),
            Story("sinan.jpg", "Sinan"),
            bosluk(),
            Story("barça.webp", "Barcelona"),
            bosluk(),
            Story("brad.jpg", "Brad Pitt"),
            bosluk(),
            Story("fb.png", "Fenerbahçe"),
            bosluk(),
            Story("leo.jpg", "Di Caprio"),
          ],
        ),
      ),
    );
  }

  Widget Story(String image, String title) {
    return Column(
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: storyBorderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/${image}",
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget bosluk() {
    return SizedBox(
      width: 8,
    );
  }
}
