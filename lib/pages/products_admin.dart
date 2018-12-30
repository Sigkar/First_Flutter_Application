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
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Beer Maker"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Create"
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "Added",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(addProduct),
            ProductListPage(),
          ],
        ),

      ),
    );
  }
}
