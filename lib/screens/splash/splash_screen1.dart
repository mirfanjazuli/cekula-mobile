import 'dart:async';
import 'package:cekula/screens/splash/splash_screen2.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(PageAnimationTransition(
            page: SplashScreen2(),
            pageAnimationType: FadeAnimationTransition())));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF9FC3F9),
              Color(0xFF83DBE0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo-splash.png",
              width: 100,
            )
          ],
        )
      ]),
    );
  }
}
