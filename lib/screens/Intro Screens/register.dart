import 'package:flutter/material.dart';
import 'package:instagram/screens/register_screen.dart';
import 'package:instagram/utitlities/colors.dart';
import 'package:lottie/lottie.dart';

import '../login_screen.dart';

class RegisterIntroScreen extends StatefulWidget {
  const RegisterIntroScreen({Key? key}) : super(key: key);

  @override
  State<RegisterIntroScreen> createState() => _RegisterIntroScreenState();
}

class _RegisterIntroScreenState extends State<RegisterIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bubble_red,
        body: Column(
          children: [
            Center(
              child: Lottie.network(
                  "https://assets2.lottiefiles.com/packages/lf20_zboivc9e.json"),
            ),
            const SizedBox(
              height: 12,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * (0.5),
              padding: EdgeInsets.all(15),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Text("Login"),
              color: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            const SizedBox(
              height: 12,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * (0.5),
              padding: EdgeInsets.all(15),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterScreen()),
                );
              },
              child: Text("Registration"),
              color: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ));
  }
}
