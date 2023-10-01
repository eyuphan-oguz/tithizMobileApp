import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 2 yana yasli duz cizgi
        Expanded(
          flex: 2,
          child: Container(
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        // veya
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'veya',
            style: TextStyle(
              fontFamily: 'LibreBaskerville-Regular',fontSize: size.width*0.032,fontWeight: FontWeight.w100,
            ),
          ),
        ),
        // 2 yana yasli duz cizgi
        Expanded(
          flex: 2,
          child: Container(
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
