import 'package:flutter/material.dart';
import '../products/product_manager.dart';
import './products_admin.dart';

class DiscoveryPage extends StatelessWidget {
  @override
  final List<Map<String, String>> products;
  final Function deleteProduct;
  final Function addProduct;

  DiscoveryPage(this.products, this.deleteProduct, this.addProduct);

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Main Menu"),
            ),
            ListTile(
              title: Text("Manage your Products"),
              onTap: () {
                // Goes to a named route from main.dart
                Navigator.pushReplacementNamed(context, '/productadmin');
              }, // onTap
            ), // ListTile
          ], // Column Children Widget
        ), // Column
      ), // Drawer
      appBar: AppBar(
        title: Text("GroupieTech"),
      ), //App Bar
      // Body pulls product manager.
      body: ProductManager(products, addProduct, deleteProduct), // Column
    ); // Scaffold
  }
}
