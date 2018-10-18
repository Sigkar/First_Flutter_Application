import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
final Function updateProducts;
ProductControl(this.updateProducts);

@override
  Widget build( BuildContext context ){
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        print('[Product Manager] Updated to Sweets;');
        updateProducts('Sweets');
      }, // Onpressed
      child: Text("Add Product"),
    ); // Raised Button;
  }
}
