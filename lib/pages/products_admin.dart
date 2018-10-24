import 'package:flutter/material.dart';
import './discovery.dart';

class ProductAdminPage extends StatelessWidget{

@override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Main Menu"),
            ),
            ListTile(
              title: Text("Discovery Feed"),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DiscoveryPage()));
              }, // onTap
            ), // ListTile
          ], // Column Children Widget
        ), // Column
      ), // Drawer
      appBar: AppBar(
        title: Text("Product Admin Page"),
      ), //App Bar
      // Body pulls product manager.
      body: Text("Hello World"),
    ); // Scaffold
  }

}
