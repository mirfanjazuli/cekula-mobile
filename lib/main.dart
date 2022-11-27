import 'package:cekula/screens/splash/splash_screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Color(0xFFFBFBFB),
            scaffoldBackgroundColor: Color(0xFFFBFBFB)),
        home: SplashScreen1());
  }
}
