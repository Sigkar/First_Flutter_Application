import 'package:flutter/material.dart';

import 'package:initial_flutter_project/products/product_manager.dart';


class DiscoveryPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  DiscoveryPage(this.products);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("WheatFeast"),
            ),
            ListTile(
              leading: Icon(Icons.create),
              title: Text("Create a Beer"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/productadmin');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("WheatFeast"),
      ),
      body: ProductManager(products),
    );
  }
}
