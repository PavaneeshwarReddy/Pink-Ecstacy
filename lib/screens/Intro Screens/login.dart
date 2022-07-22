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
      backgroundColor: bubble_pink,
      body: Column(
        children: [
          Center(
        child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_pghdouhq.json"),
      ),
        const SizedBox(
              height: 12,
            ),
            MaterialButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Text("Proceed to login"),
              color: Color.fromARGB(255, 255, 255, 255),
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
        ],
      )
    );
  }
}