import 'package:flutter/material.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("WheatFeast"),
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text("Home"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/discovery");
              },
            ),
            ListTile(
              leading: Icon(Icons.create),
              title: Text("Create"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/productadmin');
              },
            ),
            ListTile(
              leading: Icon(Icons.local_bar),
              title: Text("Restaurant"),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/restaurant');
              },
            ),
          ],
        ),
      );
  }
}