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
      State<StatefulWidget> createState(){
        return _CreateWidgetState();
      }
  }

  class _CreateWidgetState extends State<CreateWidget>{
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
        '/':(BuildContext context) => DiscoveryPage(_products, _addProduct, _deleteProduct),
        '/productadmin':(BuildContext context) => ProductAdminPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if(pathElements != ""){
          return null;
        }
        if(pathElements[1] == "Product"){
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
            builder: (BuildContext context) => ProductPage(_products[index]['title'], _products[index]['image']));
        }
        return null;
      }
    ); // Home
  }
}
