import 'package:flutter/material.dart';

import 'package:initial_flutter_project/products/products.dart';


// File is from main.dart
// Collects information from products.dart

class ProductManager extends StatelessWidget {

  final List<Map<String, dynamic>> products;


  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {;
    print('[Product Manager] Product();');
    return Column(
      children: [
        Expanded(
          child: Products(products)
        )
      ], // Column Children
    ); // Column
  }
}
