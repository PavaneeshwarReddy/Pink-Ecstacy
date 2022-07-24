import 'package:flutter/material.dart';
import 'package:instagram/Widgets/input_text_field.dart';
import 'dart:ui';

import 'package:instagram/utitlities/colors.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * (0.3),
                backgroundColor: Colors.transparent,
                child: Container(
                    padding: EdgeInsets.all(30),
                    child: Lottie.network(
                        "https://assets3.lottiefiles.com/private_files/lf30_fw6h59eu.json")),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.height * (0.5),
                height: MediaQuery.of(context).size.height * (0.5),
                
                decoration: const BoxDecoration(
                  borderRadius:  BorderRadius.only(
                topLeft:  Radius.circular(40.0),
                topRight:  Radius.circular(40.0),
              ),
                  color: bubble_blue
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * (0.05),
                      ),
                      Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: text_color_medium_dark,
                              fontSize:
                                  MediaQuery.of(context).size.width * (0.07)),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * (0.03),
                      ),
                      InputSpaceField(
                          hinttext: "E-mail",
                          texteditingcontroller: _email,
                          isPass: false,
                          textinputtype: TextInputType.emailAddress),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * (0.03),
                      ),
                      InputSpaceField(
                          hinttext: "password",
                          texteditingcontroller: _password,
                          isPass: true,
                          textinputtype: TextInputType.text),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * (0.03),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: bubble_red,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//const  Text("Everything you have ever wanted is on the other side of the fear"),