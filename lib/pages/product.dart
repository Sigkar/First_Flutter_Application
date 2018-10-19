import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ), //App Bar
      // Body pulls product manager.
      body: Column(
        children: <Widget>[
          Text("Hello there!"),
          RaisedButton(
            child: Text("BACK"),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ), // Column
    ); // Scaffold
  }
}
