import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './product_manager.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;

  runApp(CreateWidget());
}

class CreateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("GroupieTech"),
        ), //App Bar

        body: ProductManager(), // Column
      ), // Scaffold
    ); // Home
  }
}
