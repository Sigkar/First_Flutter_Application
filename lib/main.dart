import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'pages/auth.dart';

void main() {

  //UI Debugging Options
  //debugPaintSizeEnabled = true;
  //debugPaintBaselinesEnabled = true;
  //debugPaintPointersEnabled = true;

  //Creates the initial application
  runApp(CreateWidget());
}

class CreateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      //Theme Data can be set here.
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
      ),
      // Scaffold is the basic home application
      home: AuthPage(),
    ); // Home
  }
}
