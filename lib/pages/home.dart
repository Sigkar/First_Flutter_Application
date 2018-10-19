import 'package:flutter/material.dart';
import '../products/product_manager.dart';

class HomePage extends StatelessWidget{

@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("GroupieTech"),
      ), //App Bar
      // Body pulls product manager.
      body: ProductManager(), // Column
    ); // Scaffold
  }

}
