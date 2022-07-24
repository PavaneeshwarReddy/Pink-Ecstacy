import 'package:flutter/material.dart';
import 'package:instagram/utitlities/colors.dart';
import 'package:lottie/lottie.dart';

import '../login_screen.dart';

class LoginIntroScreen extends StatefulWidget {
  const LoginIntroScreen({Key? key}) : super(key: key);

  @override
  State<LoginIntroScreen> createState() => _LoginIntroScreenState();
}

class _LoginIntroScreenState extends State<LoginIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 128, 170),
      body: Column(
        children: [
          Center(
        child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_pghdouhq.json"),
      ),
        const SizedBox(
              height: 12,
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*(0.1),
            ),
            child: Text("Hi! this is Anki,\nfrom here on I will be your assistent,\nplease don't mind if I talk too much\nbecause I like you...",style: TextStyle(
              fontSize: MediaQuery.of(context).size.height*(0.03),color: Color.fromARGB(255, 255, 255, 255)),),

          )
        ],
      )
    );
  }
}