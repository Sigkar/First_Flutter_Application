import 'package:flutter/material.dart';
//import 'package:initial_flutter_project/pages/product.dart';

//File pulled from Product_Manager.dart.

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function deleteProduct;
  // The item can be added to via the [] - this is mainly used
  // This is const because the products have already been added to the screen,
  // so it is constructed in a way to not change once rendered (If code in the
  // background tries to change this for example.)
  // in the .add statement
  Products(this.products, {this.deleteProduct}) {
    print("[Products Widget] Constructor");
  }

// Constructor for building products in itemBuilder
// The products are listed as the context and the index,
// Index is pulled from product.length
  Widget _buildProductItem(BuildContext context, int index) {
    double halfWidth = (MediaQuery.of(context).size.width / 2) - 20;
    return Card(
      child: Column(
        children: <Widget>[
          // Calls the index as well as the key to the map value which is
          // defined dynamically by adding information.
          Image.network(products[index]['image']),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: halfWidth,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    products[index]['title'],
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Oswald',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 60.0,
                  width: halfWidth,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "\$" + products[index]['price'].toString() + "0",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.deepOrangeAccent,
                child: Text("Details"),
                // Navigator is the built in navigation system which is
                // listed in flutter.
                onPressed: () => Navigator.pushNamed<bool>(
                    context, "/product/" + index.toString()), // Navigator Push
              ), // FlatButton
            ], // ButtonBar Widget Children
          ), // Button Bar
        ], //Widget
      ), //Column
    ); //Body Card
  }

  // Builds the product list to be posted
  Widget _buildProductLists() {
    //initialize productCard as empty
    Widget productCards;
    print(products);
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
