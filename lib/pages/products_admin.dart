import 'package:flutter/material.dart';

import 'package:initial_flutter_project/products/product_create.dart';
import 'package:initial_flutter_project/products/product_list.dart';
import 'package:initial_flutter_project/customwidgets/navdrawer.dart';

class ProductAdminPage extends StatelessWidget {
  final Function deleteProduct;
  final Function addProduct;
  ProductAdminPage(this.addProduct, this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: NavDrawer(),
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
