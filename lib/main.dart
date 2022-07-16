import 'package:flutter/material.dart';
import 'package:instagram/responsiveness/mobile_screen_layout.dart';
import 'package:instagram/responsiveness/responsiveness.dart';
import 'package:instagram/responsiveness/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "instagram clone",
      home:Responsiveness(mobileScreenLayout:MobileScreenLayout() ,webScreenLayout: WebScreenLayout(),) ,
    );
  }
}
