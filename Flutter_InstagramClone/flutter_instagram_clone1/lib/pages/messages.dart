import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Messages());
}

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
                "omerberat10",
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
              children: [
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 7, left: 7),
                  child: Row(
                    children: [
                      Text(
                        "Messages",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "Wants",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 7, left: 7),
                  child: Container(
                    width: double.infinity,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(255, 30, 30, 30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: SvgPicture.asset(
                              "assets/icons/search.svg",
                              width: 20,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Message("Sinan Engin", "assets/images/sinan.jpg"),
                buildbosluk(),
                Message("Ahmet Çakar", "assets/images/ahmet.jpg"),
                buildbosluk(),
                Message("Brad Pitt", "assets/images/brad.jpg"),
                buildbosluk(),
                Message("Beşiktaş", "assets/images/bjk.jpg"),
                buildbosluk(),
                Message("Arda Turan", "assets/images/arda.jpg"),
                buildbosluk(),
                Message("Di Caprio", "assets/images/leo.jpg"),
                buildbosluk(),
                Message("Messi", "assets/images/messi.jpg"),
                buildbosluk(),
                Message("Fenerbahçe", "assets/images/fb.png"),
                buildbosluk(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Message(String title, String photoUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, left: 7),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      photoUrl,
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "seen 3 hours ago",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          Spacer(),
          SvgPicture.asset(
            "assets/icons/camera.svg",
            color: Colors.white.withOpacity(0.5),
            width: 31,
          )
        ],
      ),
    );
  }

  Widget buildbosluk() {
    return SizedBox(
      height: 18,
    );
  }
}
