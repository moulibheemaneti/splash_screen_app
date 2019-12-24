import 'main.dart';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class PlainBgSplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _PlainBgSplashScreenState();
}

class _PlainBgSplashScreenState extends State<PlainBgSplashScreen>{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 7,
      navigateAfterSeconds: MyHomePage(),
      title: new Text("SPLASH SCREEN",
        style: new TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          //color: Colors.blue,
        ),
      ),

      image: new Image.asset("assets/flutter.png"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
      loadingText: Text('Loading...',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),

    );
  }
}