import 'package:flutter/material.dart';

import 'package:initial_flutter_project/products/product_create.dart';
import 'package:initial_flutter_project/products/product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final Function deleteProduct;
  final Function addProduct;
  ProductAdminPage(this.addProduct, this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Defines the length of the tabs
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Main Menu"),
              ),
              ListTile(
                title: Text("Discovery Feed"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/discovery");
                }, // onTap
              ), // ListTile
            ], // Column Children Widget
          ), // Column
        ), // Drawer
        appBar: AppBar(
          title: Text("Product Admin Page"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Create Product"
              ), // Tab
              Tab(
                icon: Icon(Icons.list),
                text: "My Products",
              ), // Tab
            ], // Tabs
          ), // Tab Bar
        ), //App Bar
        // Body pulls product manager.
        body: TabBarView(
          children: <Widget>[
            // Has to equal the number of tabs
            ProductCreatePage(addProduct),
            ProductListPage(),
          ],
        ),

      ), // Scaffold
    );
  }
}
