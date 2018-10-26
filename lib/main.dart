import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'pages/auth.dart';

import 'pages/products_admin.dart';
import 'pages/discovery.dart';
import 'pages/product.dart';

void main() {
  //UI Debugging Options
  //debugPaintSizeEnabled = true;
  //debugPaintBaselinesEnabled = true;
  //debugPaintPointersEnabled = true;

  //Creates the initial application
  runApp(CreateWidget());
}

class CreateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateWidgetState();
  }
}

class _CreateWidgetState extends State<CreateWidget> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product){
    setState((){
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState((){
      _products.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowMaterialGrid: true,
        //Theme Data can be set here.
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
        ),
        // Scaffold is the basic home application
        //home: AuthPage(),
        routes: {
          //generates named routes
          '/': (BuildContext context) =>
              DiscoveryPage(_products, _addProduct, _deleteProduct),
          '/productadmin': (BuildContext context) => ProductAdminPage(),
        },
        onGenerateRoute: (RouteSettings settings) {
          // Every time we load a route it will break this up.
          // Basically it shards everything, and if the shard is equal to xyz,
          // then go to do this specific command.
          final List<String> pathElements = settings.name.split('/');
          // If there is no route to begin with (IE a build route, exit this and
          // continue)
          if (pathElements[0] != "") {
            return null;
          } // If theres nothing
          // If we have product as our first route
          if (pathElements[1] == "product") {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
                builder: (BuildContext context) => ProductPage(
                    _products[index]['title'], _products[index]['image']),
                  ); // MaterialPageRoute
          } // If we're on Products
          return null; //Default
        }, // onGenerateRoute
        onUnknownRoute: (RouteSettings settings){
          return MaterialPageRoute(
            builder: (BuildContext context) => DiscoveryPage(_products, _addProduct, _deleteProduct),
          ); // Material Page Route
        } // On Unknown Route

      ); // Material App
  }
}
