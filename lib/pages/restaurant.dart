import 'package:flutter/material.dart';
import 'package:initial_flutter_project/customwidgets/navdrawer.dart';

import 'package:initial_flutter_project/pages/restaurant_info.dart';
import 'package:initial_flutter_project/pages/restaurant_menu.dart';


class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("\$RestaurantName"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_convenience_store),
                text: "Information"
              ),
              Tab(
                icon: Icon(Icons.local_dining),
                text: "Menu",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            RestaurantInfo(),
            RestaurantMenu(),
          ],
        ),
      ),
    );
  }
}