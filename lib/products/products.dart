import 'package:flutter/material.dart';
import '../pages/product.dart';

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
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          //Image.asset('assets/sushiiii.jpeg'),
          Image.network('https://picsum.photos/500/200/?random'),
          Text(""),
          Text(products[index]),
          Text(""),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                // Navigator is the built in navigation system which is
                // listed in flutter.
                onPressed: () => Navigator.push(
                  // The context in which it is coming from for flutter
                    context,
                  // Material Page Route preps the builder
                    MaterialPageRoute(
                      // the builder itself takes the build context
                      // (What stack you are on currently, etc)
                      // Will then produce the new page on top of that stack.
                        builder: (BuildContext context) => ProductPage())),
              ),
            ],
          ),
        ], //Widget
      ), //Column
    ); //Body Card
  }

  // Builds the product list to be posted
  Widget _buildProductLists() {
    //initialize productCard as empty
    Widget productCards;
    if (products.length > 0) {
      // If we have items, overwrite productCard
      productCards = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    } else {
      productCards = Center(
        child: Text("No Products found, please add some!"),
      );
    }

    return productCards;
  }

  // Ternary Expression explanation
  // First is if products is more than one then show the items. If not, then
  // show the text. return expression ? yes : else
  Widget build(BuildContext context) {
    print('[Products Widget] Build();');
    return _buildProductLists();
  }
}
