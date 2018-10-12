import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
  runApp(CreateWidget());
}

class CreateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GroupieTech"),
        ), //App Bar

        body: ProductManager(), // Column
      ), // Scaffold
    ); // Home
  }
}
