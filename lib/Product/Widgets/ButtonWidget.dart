import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({Key? key, required this.onPressed, required this.buttonText, required this.height,this.buttonColor,this.textColor,this.icon}) : super(key: key);
  final Function() onPressed;
  final String buttonText;
  final double height;
  Color? buttonColor;
  Color? textColor;
  Icon? icon;


  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: widget.height,
        child: ElevatedButton(onPressed: widget.onPressed,
          child: widget.icon == null ? Text(widget.buttonText,style: TextStyle(color: widget.textColor),):
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            widget.icon!,
            SizedBox(width: 5,),
            Text(widget.buttonText,style: TextStyle(color: widget.textColor),)
          ],)
          ,
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.buttonColor == null ? Colors.white : widget.buttonColor
          ),

        ));
  }
}
