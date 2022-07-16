import 'package:flutter/material.dart';
import 'package:instagram/responsiveness/mobile_screen_layout.dart';
import 'package:instagram/utitlities/dimensions.dart';

class Responsiveness extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const Responsiveness(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) { 
      if (constraints.maxWidth > webScreenSize) {
        //webscreen layout
        return webScreenLayout;
      }
      else
      {
        //mobile screen layout
        return mobileScreenLayout;
      }
    });
  }
}
