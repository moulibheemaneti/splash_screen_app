import 'main.dart';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class GradBgSplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _GradBgSplashScreenState();
}

class _GradBgSplashScreenState extends State<GradBgSplashScreen>{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 7,
      navigateAfterSeconds: MyHomePage(),
      title: new Text("SPLASH SCREEN",
        style: new TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      
      // below line takes image from internet. You can type your URL.
      // image: new Image.Network(""),
      image: new Image.asset("assets/flutter.png"),
      photoSize: 100.0,
      loaderColor: Colors.white,
      loadingText: Text('Loading...',
        style: TextStyle(
          color: Colors.white,
        ),
      ),

      gradientBackground: LinearGradient(
        // Where the linear gradient begins and ends
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        // Add one stop for each color. Stops should increase from 0 to 1
        stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Colors.indigo[700],
          Colors.indigo[600],
          Colors.indigo[500],
          Colors.indigo[400],
        ],
      ),
    );
  }
}
