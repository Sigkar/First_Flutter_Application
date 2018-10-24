import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  final String title;
  final String imgUrl;

  ProductPage(this.title, this.imgUrl);

  Widget build(BuildContext context) {
    print("==================================================================");
    print("Item Details - Returning Scaffold");
    print("Title: " + title);
    print("Image: " + imgUrl);
    print("==================================================================");
    return WillPopScope(
      onWillPop: (){
        print("");
        print("==================================================================");
        print("Button has been pressed");
        print("Popping the context");
        print("==================================================================");
        print("");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ), //App Bar
        // Body pulls product manager.
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(imgUrl),
            Container(padding: EdgeInsets.all(10.0), child: Text(title)),
            Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text("DELETE"),
                  onPressed: () => Navigator.pop(context, true),
                ) // Raised Button
                ),
          ], // Children Widget
        ), // Column
      ), // WillPopScope
    ); // Scaffold
  }
}
