import 'package:flutter/material.dart';
import '../products/product_manager.dart';
import './productadmin.dart';

class DiscoveryPage extends StatelessWidget{

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
              title: Text("Manage Products"),
              onTap: (){Navigator.push(
                // The context in which it is coming from for flutter
                  context,
                // Material Page Route preps the builder
                  MaterialPageRoute(
                    // the builder itself takes the build context
                    // (What stack you are on currently, etc)
                    // Will then produce the new page on top of that stack.
                      builder: (BuildContext context) => ProductAdminPage()
                    ) //Material Page Route
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("GroupieTech"),
      ), //App Bar
      // Body pulls product manager.
      body: ProductManager(), // Column
    ); // Scaffold
  }

}
