import 'package:flutter/material.dart';
import 'package:initial_flutter_project/pages/auth.dart';

import 'package:initial_flutter_project/pages/products_admin.dart';
import 'package:initial_flutter_project/pages/discovery.dart';
import 'package:initial_flutter_project/pages/product.dart';

void main() {
  runApp(CreateWidget());
}

class CreateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateWidgetState();
  }
}

class _CreateWidgetState extends State<CreateWidget> {
  List<Map<String, dynamic>> _products = [];

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent,
        ),
        routes: {
          '/': (BuildContext context) =>
              AuthPage(),
          '/discovery': (BuildContext context) => DiscoveryPage(_products),
          '/productadmin': (BuildContext context) => ProductAdminPage(_addProduct, _deleteProduct),
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != "") {
            return null;
          }
          if (pathElements[1] == "product") {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                  _products[index]['title'], _products[index]['image'], _products[index]['description']),
            );
          } 
          return null; 
        }, 
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) =>
                DiscoveryPage(_products),
          ); 
        }
        );
  }
}
