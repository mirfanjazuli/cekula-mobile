import 'package:cekula/login_page.dart';
import 'package:flutter/material.dart';
import 'package:cekula/home_page.dart';

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
        home: LoginPage());
  }
}
