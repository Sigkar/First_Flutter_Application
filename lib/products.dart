import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;
  Products([this.products = const []]) {
    print("[Products Widget] Constructor");
  }

  Widget build(BuildContext context) {
    print('[Products Widget] Build();');
    return ListView(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      //Image.asset('assets/sushiiii.jpeg'),
                      Image.network('https://picsum.photos/500/200/?random'),
                      Text(""),
                      Text(element),
                      Text(""),
                    ], //Widget
                  ), //Column
                ), //Body Card
          )
          .toList(), //map set to a list
    ); // Column
  }
}
