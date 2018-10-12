import 'package:flutter/material.dart';
class Products extends StatelessWidget{
  final List<String> products;
  Products(this.products);

  Widget build(BuildContext context){
    return   Container(
        margin: EdgeInsets.all(10.0),
        width: 1200.0,
        child: Column(
          children: products
              .map(
                (element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/sushiiii.jpeg'),
                          Text(element),
                        ], //Widget
                      ), //Column
                    ), //Body Card
              )
              .toList(), //map set to a list
        ), // Column
      ); // Container
  }

}
