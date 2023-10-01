import 'package:flutter/material.dart';


class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({Key? key, required this.hintText, required this.textEditingController, required this.keyboardType,this.obscureText}) : super(key: key);
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  bool? obscureText=false ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType:keyboardType,
      obscureText: obscureText == false ? true : false,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1.4, color: Colors.grey.shade500),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
          width: 1.5, color: Colors.grey.shade400),
      ),)
    );


  }
}
