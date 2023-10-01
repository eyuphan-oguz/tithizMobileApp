import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tithiz/View/LoginPage/LoginPageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tithiz',
        theme: ThemeData(
        appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark
    ),),
      home: LoginPageView(),
    );
  }
}