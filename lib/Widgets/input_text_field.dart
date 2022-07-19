import 'package:flutter/material.dart';
import 'package:instagram/utitlities/colors.dart';

class InputSpaceField extends StatelessWidget {
  final TextEditingController texteditingcontroller;
  final bool isPass;
  final String hinttext;
  final TextInputType textinputtype;

  const InputSpaceField({Key? key,required this.hinttext,required this.texteditingcontroller,required this.textinputtype,required this.isPass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide:const  BorderSide(
        width: 1,
        color: Color.fromARGB(255, 255, 255, 255)
      )
    );
     return TextField(
        controller: texteditingcontroller,
       decoration: InputDecoration(
        
      
        focusedBorder: inputborder,
        border: inputborder,
        enabledBorder: inputborder,
         hintText: hinttext,
         
         
        
       ),
       obscureText: isPass,
       keyboardType: textinputtype,
       

     );
  }
}