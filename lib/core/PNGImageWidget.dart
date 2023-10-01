import 'package:flutter/material.dart';

class PNGImageWidget extends StatelessWidget {
  const PNGImageWidget({Key? key, required this.imagePath, required this.width, required this.height}) : super(key: key);
  final String imagePath;
  final double width;
  final double height;

  String toPng(){
    return "assets/images/png/${imagePath}.png";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        child: Image.asset(toPng()));
  }
}
