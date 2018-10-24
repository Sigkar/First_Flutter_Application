import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

// File is from main.dart
// Collects information from products.dart

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;
  ProductManager({this.startingProduct}){
      print("[Product Manager] startingProduct state");
  }
  State<StatefulWidget> createState() {
    print("[Product Manager] createState()");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];
  @override
  void initState() {
    super.initState();
    print('[Product Manager] [SUPER CALL - initState()] Product Manager is set to State');
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
  }

  @override
  void didUpdateWidget(ProductManager oldWidget){
      print("[Product Manager] [SUPER CALL - didUpdateWidget()] Widget Updated");
      super.didUpdateWidget(oldWidget);
  }

  void _addProducts(Map<String, String> product){
    setState(() {
      _products.add(product);
    }); // Set State
  }

  void _deleteProduct(int index){
    setState((){
      _products.removeAt(index);
    });

  }

  @override
  Widget build(BuildContext context) {;
    print('[Product Manager] Product();');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProducts),
        ), // Container
        Expanded(
          child: Products(_products, deleteProduct: _deleteProduct)
        )
      ], // Column Children
    ); // Column
  }
}
