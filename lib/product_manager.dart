import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Creative Product'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Super Food Tester');
              }); // Set State
            }, // Onpressed
            child: Text("Add Product"),
          ), // Raised Button
        ), // Container
        Products(_products)
      ], // Column Children
    ); // Column
  }
}
