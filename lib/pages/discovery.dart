import 'package:flutter/material.dart';

import 'package:initial_flutter_project/products/product_manager.dart';

import 'package:initial_flutter_project/customwidgets/navdrawer.dart';

class DiscoveryPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  DiscoveryPage(this.products);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("WheatFeast"),
      ),
      body: ProductManager(products),
    );
  }
}
