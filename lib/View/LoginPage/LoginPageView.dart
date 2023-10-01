import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tithiz/Product/ProjectColor.dart';
import 'package:tithiz/Product/ProjectPadding.dart';
import 'package:tithiz/Product/ProjectText.dart';
import 'package:tithiz/Product/Widgets/ButtonWidget.dart';
import 'package:tithiz/Product/Widgets/TextFormFieldWidget.dart';
import 'package:tithiz/core/OrWidget.dart';
import 'package:tithiz/core/PNGImageWidget.dart';
import 'package:tithiz/core/TermsOfServiceWidget.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    Size size = MediaQuery.of(context).size;

    void validateEmail(){
      final bool isValid = EmailValidator.validate(emailController.text.trim());
      isValid ? true :ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Geçersiz Email")));
    }
    return Scaffold(

      body: Padding(
        padding:ProjectPadding.mainPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: size.height*0.1,),
            PNGImageWidget(imagePath: "titizlogoyataymavi", width: size.width*0.6, height: size.height*0.1,),
            SizedBox(height: size.height*0.02,),
            Text(ProjectText().loginPageWelcomeTextTitle,style: TextStyle(fontFamily: 'LibreBaskerville-Bold',fontSize: size.width*0.07),),
            SizedBox(height: size.height*0.05,),
            Text(ProjectText().loginPageWelcomeTextDesc,style: TextStyle(fontFamily: 'LibreBaskerville-Regular',fontSize: size.width*0.04,fontWeight: FontWeight.w100),),
            SizedBox(height: size.height*0.02,),
            TextFormFieldWidget(hintText: "Email", textEditingController: emailController, keyboardType: TextInputType.emailAddress),
            SizedBox(height: size.height*0.02,),
            ButtonWidget(onPressed: () {  }, buttonText: 'Devam Et', height: size.height*0.05,textColor: Colors.white,buttonColor: ProjectColor().appColor,),
            TermsOfServiceWidget(size: size, context: context,),
            OrWidget(size: size,),
            SizedBox(height: size.height*0.02,),
            Container(
              width: size.width,
              height: size.height*0.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(onPressed: () {  }, buttonText: 'Apple ile Devam Et', height: size.height*0.05,textColor: Colors.white,buttonColor: ProjectColor().appleLoginButtonColor,icon: Icon(FontAwesomeIcons.apple),),
                  ButtonWidget(onPressed: () {  }, buttonText: 'Facebook ile Devam Et', height: size.height*0.05,textColor: Colors.white,buttonColor: ProjectColor().facebookLoginButtonColor,icon: Icon(FontAwesomeIcons.facebook),),
                  ButtonWidget(onPressed: () {  }, buttonText: 'Google ile Devam Et', height: size.height*0.05,textColor: Colors.white,buttonColor: Colors.red,icon: Icon(FontAwesomeIcons.google,color: Colors.white,),),
                ],
              ),
            ),
            SizedBox(height: size.height*0.05,),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(onPressed: (){}, child: Text("Daha Sonra Hatırlat",style: TextStyle(
                fontFamily: 'LibreBaskerville-Regular',fontSize: size.width*0.032,fontWeight: FontWeight.w100,color: Colors.grey.shade700
              ),),),
            )

          ],
        ),
      ),
    );
  }

}
