import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utitlities/colors.dart';

class TitleScreenIntro extends StatefulWidget {
  const TitleScreenIntro({Key? key}) : super(key: key);

  @override
  State<TitleScreenIntro> createState() => _TitleScreenIntroState();
}

class _TitleScreenIntroState extends State<TitleScreenIntro> {
  final _confetti = ConfettiController();
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            
            children:[
              Container(
                child: Center(
                  child: InkWell(

                    child: Image.asset('images/V.png'),
                      onTap: (){
                    if(isPlaying)
                    _confetti.stop();
                    else
                    _confetti.play();
                    isPlaying!=isPlaying;
                  },
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: ConfettiWidget(
                  gravity: 0.001,
                  blastDirection:-pi/2,
                  blastDirectionality: BlastDirectionality.explosive,
                confettiController: _confetti,
                colors:const  [
                  bubble_blue,
                  bubble_green,
                  Color.fromARGB(255, 155, 170, 255),
                  Color.fromARGB(255, 241, 138, 255),
                  Color.fromARGB(255, 196, 138, 117),
                  bubble_pink,
                  bubble_red
                ],
                // emissionFrequency: ,
                        ),
              ),
              Container(
                alignment: Alignment(0,0.90),
                child: Text("Swipe",style: TextStyle(color: Colors.white),),
              )
           
            ] 
          ),
        ),
      );
  }
}