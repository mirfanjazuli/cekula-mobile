import 'dart:async';
import 'package:cekula/login_page.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(PageAnimationTransition(
            page: LoginPage(), pageAnimationType: FadeAnimationTransition())));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          color: Colors.white,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              width: 100,
            )
          ],
        )
      ]),
    );
  }
}
