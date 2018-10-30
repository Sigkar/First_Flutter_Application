import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  final String title;
  final String imgUrl;

  _showWarningDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This action can not be undone!"),
            actions: <Widget>[
              FlatButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              FlatButton(
                  child: Text("Delete"),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context, true);
                  }), //FlatButton, OnPressed
            ], // Actions
          ); // Alert Dialog
        }); // Show Dialog
  }

  ProductPage(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
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
                  child: Text("Delete"),
                  onPressed: () => _showWarningDialog(context),
                ) // Raised Button
                ),
          ], // Children Widget
        ), // Column
      ), // WillPopScope
    ); // Scaffold
  }
}
