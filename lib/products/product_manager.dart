import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

// File is from main.dart
// Collects information from products.dart

class ProductManager extends StatelessWidget {

  final List<Map<String, String>> products;
  final Function deleteProduct;
  final Function addProduct;

  ProductManager(this.products, this.deleteProduct, this.addProduct);

  @override
  Widget build(BuildContext context) {;
    print('[Product Manager] Product();');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ), // Container
        Expanded(
          child: Products(products, deleteProduct: deleteProduct)
        )
      ], // Column Children
    ); // Column
  }
}
