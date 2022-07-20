import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/Widgets/input_text_field.dart';
import 'package:instagram/resources/auth_methods.dart';
import 'package:instagram/utitlities/colors.dart';
import 'package:instagram/utitlities/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _bio = TextEditingController();
  Uint8List? _image;

  void SelectImage() async
  {
      Uint8List im = await pickImage(ImageSource.gallery);
      setState(() {
            _image = im;
      });
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _username.dispose();
    _bio.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset:
              true, //best to avoid screen and keyboard misplace errors
          body: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * (0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * (2),
                  backgroundColor: bubble_orange,
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.height * (0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * (2),
                  backgroundColor: bubble_red,
                ),
              ),
              
              Positioned(
                top: -MediaQuery.of(context).size.height * (1),
                left: -MediaQuery.of(context).size.height * (0.3),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * (1.4),
                  backgroundColor: bubble_green,
                ),
              ),
              Positioned(
                bottom: -MediaQuery.of(context).size.height * (1.5),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * (2),
                  backgroundColor: bubble_blue,
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * (0.1)),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text("Register:",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.08,
                                    color: const Color.fromARGB(
                                        255, 99, 99, 99)))),
                        const SizedBox(
                          height: 12,
                        ),
                        Stack(
                          children: [
                           _image!=null? CircleAvatar(
                              radius: MediaQuery.of(context).size.width * (0.2),
                              backgroundImage: MemoryImage(_image!),
                            ):CircleAvatar(
                              radius: MediaQuery.of(context).size.width * (0.2),
                              backgroundColor: Colors.white,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: IconButton(
                                onPressed:SelectImage,
                                icon: const Icon(Icons.add_a_photo_sharp,color: text_color_dark,),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        InputSpaceField(
                            hinttext: "username",
                            texteditingcontroller: _username,
                            textinputtype: TextInputType.text,
                            isPass: false),
                        const SizedBox(
                          height: 12,
                        ),
                        InputSpaceField(
                            hinttext: "e-mail",
                            texteditingcontroller: _email,
                            textinputtype: TextInputType.emailAddress,
                            isPass: false),
                        const SizedBox(
                          height: 12,
                        ),
                        InputSpaceField(
                            hinttext: "password",
                            texteditingcontroller: _password,
                            textinputtype: TextInputType.text,
                            isPass: true),
                        const SizedBox(
                          height: 12,
                        ),
                        InputSpaceField(
                            hinttext: "bio",
                            texteditingcontroller: _bio,
                            textinputtype: TextInputType.text,
                            isPass: false),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              // ignore: sort_child_properties_last

                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () async {
                                 String signUperror = await AuthMethods().signUpUser(email: _email.text, password: _password.text, username: _username.text, bio: _bio.text, file: _image!);
                                 print(signUperror);
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromARGB(255, 104, 104, 104),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
