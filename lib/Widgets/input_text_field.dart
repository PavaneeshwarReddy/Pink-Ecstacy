import 'package:flutter/material.dart';

class InputSpaceField extends StatelessWidget {
  final TextEditingController texteditingcontroller;
  final bool isPass;
  final String hinttext;
  final TextInputType textinputtype;

  const InputSpaceField({Key? key,required this.hinttext,required this.texteditingcontroller,required this.textinputtype,required this.isPass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context)
    );
     return TextField(
         
       decoration: InputDecoration(
        hintText: hinttext,
        focusedBorder: inputborder,
        border: inputborder,
        enabledBorder: inputborder,
       ),
       obscureText: isPass,
       keyboardType: textinputtype,

     );
  }
}