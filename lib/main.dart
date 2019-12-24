import 'package:flutter/material.dart';

import 'grad_bg_splash.dart';
import 'plain_bg_splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),

      routes: {
        '/gradbg' : (context) => GradBgSplashScreen(),
        '/plainbg': (context) => PlainBgSplashScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("First App")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GradBgSplashScreen()));
              },
              padding: EdgeInsets.all(0.0),
              child: new Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigo[700],
                      Colors.indigo[600],
                      Colors.indigo[500],
                      Colors.indigo[400],
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text("Gradient Button",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),

            ),
            SizedBox(height:20),
            new RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlainBgSplashScreen()));
              },
              child: new Text("Plain Bg Splash"),
            )
          ],
        ),
      ),
    );
  }
}
