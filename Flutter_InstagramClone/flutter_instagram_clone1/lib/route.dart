import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone1/main.dart';
import 'package:flutter_instagram_clone1/pages/Notifications.dart';
import 'package:flutter_instagram_clone1/pages/accountScreen.dart';
import 'package:flutter_instagram_clone1/pages/messages.dart';

void main() {
  runApp(Route());
}

class Route extends StatefulWidget {
  const Route({Key? key}) : super(key: key);

  @override
  State<Route> createState() => _RouteState();
}

class _RouteState extends State<Route> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/homescreen": (context) => HomeScreen(),
        "/messages": (context) => Messages(),
        "/notifications": (context) => Notifications(),
        "/account": (context) => Account(),
      },
      initialRoute: "/homescreen",
    );
  }
}
