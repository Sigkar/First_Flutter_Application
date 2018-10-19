import 'package:flutter/material.dart';

// file is called from products.dart - returns a button which lets us change
// information which has also been passed up into a void function in products
// via updateProducts();

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
