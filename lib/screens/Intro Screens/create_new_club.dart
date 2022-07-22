import 'package:flutter/material.dart';
import 'package:instagram/utitlities/colors.dart';
import 'package:lottie/lottie.dart';

class CreateNewClub extends StatefulWidget {
  const CreateNewClub({Key? key}) : super(key: key);

  @override
  State<CreateNewClub> createState() => _CreateNewClubState();
}

class _CreateNewClubState extends State<CreateNewClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bubble_blue,
        body: Column(
          children: [
            Center(
              child: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_w5hernhv.json"),
            ),
            const SizedBox(
              height: 12,
            ),
            MaterialButton(
              padding: EdgeInsets.all(15),
              onPressed: () {},
              child: Text("Add a new club"),
              color: Color.fromARGB(255, 255, 255, 255),
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ));
  }
}
