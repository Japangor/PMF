
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
void main() {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Image.asset("assets/logo.png")
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(routes: {

      "/": (_) => new WebviewScaffold(
        url: "http://packmyfood.in/",

        // AppBar
      ) // WebviewScaffold
    });

  }

}