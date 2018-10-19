import 'package:flutter/material.dart';

//File pulled from Product_Manager.dart.

class Products extends StatelessWidget {
  final List<String> products;
  // The item can be added to via the [] - this is mainly used
  // This is const because the products have already been added to the screen,
  // so it is constructed in a way to not change once rendered (If code in the
  // background tries to change this for example.)
  // in the .add statement
  Products([this.products = const []]) {
    print("[Products Widget] Constructor");
  }


// Constructor for building products in itemBuilder
// The products are listed as the context and the index,
// Index is pulled from product.length
  Widget _buildProductItem(BuildContext context, int index){
    return Card(
          child: Column(
            children: <Widget>[
              //Image.asset('assets/sushiiii.jpeg'),
              Image.network('https://picsum.photos/500/200/?random'),
              Text(""),
              Text(products[index]),
              Text(""),
            ], //Widget
          ), //Column
        ); //Body Card
  }
  Widget build(BuildContext context) {
    print('[Products Widget] Build();');
    // Ternary Expression
    // First is if products is more than one then show the items. If not, then
    // show the text. ? :
    return products.length > 0 ? ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    ) : Center(
      child: Text("No Products found, please add some!"),
    );// Column
  }
}
