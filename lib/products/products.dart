import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function deleteProduct;
  Products(this.products, {this.deleteProduct}) {
    print("[Products Widget] Constructor");
  }

  Widget _buildProductItem(BuildContext context, int index) {
    double halfWidth = (MediaQuery.of(context).size.width / 2) - 20;
    return Card(
      child: Column(
        children: <Widget>[
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
                onPressed: () => Navigator.pushNamed<bool>(
                    context, "/product/" + index.toString()),
              ),
            ],
          ),
        ],
      ),
    ); 
  }
  Widget _buildProductLists() {
    Widget productCards;
    print(products);
    if (products.length > 0) {
      productCards = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    } else {
      productCards = Center(
        child: Text("No Products found, please add some!"),
      );
    }

    return productCards;
  }
  Widget build(BuildContext context) {
    print('[Products Widget] Build();');
    return _buildProductLists();
  }
}
