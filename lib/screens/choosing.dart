import 'package:flutter/material.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/register_screen.dart';

class DecideScreen extends StatefulWidget {
  const DecideScreen({Key? key}) : super(key: key);

  @override
  State<DecideScreen> createState() => _DecideScreenState();
}

class _DecideScreenState extends State<DecideScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
                child: Text("Login Screen"),
                onTap: (){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
                },
        ),
         InkWell(
                child: Text("Login Screen"),
                onTap: (){
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterScreen()),
            );
                },
        )
      ],
    );
  }
}
