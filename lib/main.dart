import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/responsiveness/mobile_screen_layout.dart';
import 'package:instagram/responsiveness/responsiveness.dart';
import 'package:instagram/responsiveness/web_screen_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instagram/screens/Intro%20Screens/IntroSlider.dart';
import 'package:instagram/screens/choosing.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyBTBgToVWaxkm6BH7c4Qg1NC-G19Us8hbs",
      appId: "1:991407520271:web:a1e5163d215bc9be37417a",
      messagingSenderId: "991407520271",
      projectId: "pinkecstacy",
      storageBucket: "pinkecstacy.appspot.com",//this is required when we use firestore database
    ));
  } else {
    await Firebase.initializeApp();
  }
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
    return  MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(bodyText2: GoogleFonts.indieFlower(),button: GoogleFonts.indieFlower(),caption: GoogleFonts.indieFlower(),headline1: GoogleFonts.indieFlower(),overline: GoogleFonts.indieFlower(),subtitle1: GoogleFonts.indieFlower(),subtitle2: GoogleFonts.indieFlower(),),
      ),
      debugShowCheckedModeBanner: false,
      title: "instagram clone",
      // home: Responsiveness(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: IntroSlider(),
    );
  }
}
