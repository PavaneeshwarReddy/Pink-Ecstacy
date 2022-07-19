import 'package:flutter/material.dart';

class BubbleDesign extends StatelessWidget {
  final  Color setColour;
  final double left;
  final double right;
  final double top;
  final double bottom;
  final double radius;
  final bool positive;
  const BubbleDesign(
      {Key? key,
       required this.top,
      required this.bottom,
      required this.left,
      required this.right,
      required this.radius,
      required this.setColour,
      required this.positive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top:positive?MediaQuery.of(context).size.height*(top):-MediaQuery.of(context).size.height*(top),
      left:positive?MediaQuery.of(context).size.height*(top):-MediaQuery.of(context).size.height*(top),
      right:positive?MediaQuery.of(context).size.height*(top):-MediaQuery.of(context).size.height*(top),
      bottom:positive?MediaQuery.of(context).size.height*(top):-MediaQuery.of(context).size.height*(top),
      child: CircleAvatar(
             radius:MediaQuery.of(context).size.width*(radius) ,
             backgroundColor: setColour,
      ),
    );
  }
}
