import 'package:flutter/material.dart';
import 'package:instagram/Widgets/input_text_field.dart';
import 'dart:ui';

import 'package:instagram/utitlities/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -MediaQuery.of(context).size.height * (0.2),
              left: -MediaQuery.of(context).size.height * (0.2),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * (0.3),
                backgroundColor: bubble_pink,
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * (0.5),
              height: MediaQuery.of(context).size.height * (0.4),
              top: MediaQuery.of(context).size.height * (0.05),
              left: MediaQuery.of(context).size.height * (0.02),
              child: Text(
                "''Everything you have ever wanted is on the other side of the fear''",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * (0.07),
                    color: text_color_dark),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * (0),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * (0.25),
                backgroundColor: bubble_blue,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2),
                  child: Column(
                    children:  [
                      const Center(
                        child: Text("Login"),
                      ),
                      InputSpaceField(
                          hinttext: "E-mail",
                          texteditingcontroller: _email,
                          isPass: false,
                          textinputtype: TextInputType.emailAddress),
                           InputSpaceField(
                          hinttext: "password",
                          texteditingcontroller: _password,
                          isPass: false,
                          textinputtype: TextInputType.text),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//const  Text("Everything you have ever wanted is on the other side of the fear"),