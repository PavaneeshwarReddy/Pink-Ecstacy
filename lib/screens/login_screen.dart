import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:instagram/utitlities/colors.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height*(0.3),
                backgroundColor:bubble_pink ,
                child:const  Text("Everything you have ever wanted is on the other side of the fear"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
