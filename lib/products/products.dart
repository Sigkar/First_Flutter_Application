import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function deleteProduct;
  Products(this.products, {this.deleteProduct}) {
    print("[Products Widget] Constructor");
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 0.0,
        ),
        child: Column(
          children: <Widget>[

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    leading:             
                    Image.network(
                      products[index]['image'], 
                      height: 100.0,
                    ),
                    title: Text(products[index]['title']),
                    subtitle: Text("Rating: " + products[index]['price'].toString() + "/5.0",),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:20.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child:FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.list, 
                            ),
                            Text("Details"),
                          ],
                        ),
                        onPressed: () => Navigator.pushNamed<bool>(
                          context, "/product/" + index.toString()),
                      ),
                    ),
                    Expanded(
                      child:FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star, 
                              color: Colors.amber,
                            ),
                            Text("Rate Me"),
                          ],
                        ), 
                        onPressed: () => Navigator.pushNamed<bool>(
                            context, "/product/" + index.toString()),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                        onPressed: () {
                          /* API to favorite for this user */
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
