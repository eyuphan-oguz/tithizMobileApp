import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tithiz/Product/ProjectColor.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsOfServiceWidget extends StatefulWidget {
  const TermsOfServiceWidget({Key? key, required this.size, required this.context}) : super(key: key);
  final Size size;
  final BuildContext context;

  @override
  State<TermsOfServiceWidget> createState() => _TermsOfServiceWidgetState();
}
bool isLoaded = false;

void _launchGoogle() async {
  const url = 'https://termly.io/resources/templates/terms-of-use-template/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class _TermsOfServiceWidgetState extends State<TermsOfServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),

      child: Center(
          child: Text.rich(
              TextSpan(
                  text: "Devama dokunarak, tithiz'in ", style: TextStyle(
                  fontFamily: 'LibreBaskerville-Regular',fontSize: widget.size.width*0.025,fontWeight: FontWeight.w100
              ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Kullanım Koşullarını', style: TextStyle(
                      fontFamily: 'LibreBaskerville-Regular',fontSize: widget.size.width*0.025,fontWeight: FontWeight.w100,
                      color: ProjectColor().appColor,
                      decoration: TextDecoration.underline,
                    ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // code to open / launch terms of service link here
                            _launchGoogle();

                          }
                    ),
                    TextSpan(
                        text: ' kabul ediyorum', style: TextStyle(
                      fontFamily: 'LibreBaskerville-Regular',fontSize: widget.size.width*0.025,fontWeight: FontWeight.w100,
                    ),
                        children: <TextSpan>[

                        ]
                    )
                  ]
              )
          )
      ),
    );
  }
}
