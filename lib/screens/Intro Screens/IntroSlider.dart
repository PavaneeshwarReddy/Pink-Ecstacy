import "package:flutter/material.dart";
import 'package:instagram/screens/Intro%20Screens/create_new_club.dart';
import 'package:instagram/screens/Intro%20Screens/login.dart';
import 'package:instagram/screens/Intro%20Screens/register.dart';
import 'package:instagram/screens/Intro%20Screens/title_screen.dart';
import 'package:instagram/utitlities/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroSlider extends StatefulWidget {
  const IntroSlider({Key? key}) : super(key: key);

  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  final PageController _pageController = PageController();
  var LastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index)
            {
              setState(() {
                  if(index==3)
                  {
                    LastPage=true;
                  }
                  else
                  {
                    LastPage=false;
                  }
               
              });
            },
            children: const [
              
              TitleScreenIntro(),
               LoginIntroScreen(),
              CreateNewClub(),
              RegisterIntroScreen(),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                  onTap: () {
                      _pageController.jumpToPage(3);
                  },
                    child: Text("skip"),
                  ),
                  SmoothPageIndicator(
                    effect:const ExpandingDotsEffect(
                      dotHeight:10,
                      dotColor: Colors.white,
                      activeDotColor: Color.fromARGB(255, 167, 205, 255)
                    ),
                    controller: _pageController,
                    count: 4,
                  ),
                 GestureDetector(
                  onTap: () {
                      _pageController.nextPage(duration: Duration(milliseconds: 800), curve: Curves.easeIn);
                  },
                    child:LastPage?Text("end"):Text("next"),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
