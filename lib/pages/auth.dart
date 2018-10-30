import 'package:flutter/material.dart';

// import ''

class AuthPage extends StatelessWidget{

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Authentication"),
        ), //App Bar
        // Body pulls product manager.
        body: Center(
          child: RaisedButton(
            child: Text("LOGIN"),
            onPressed: (){
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
        ), // Column
      ); // Scaffold
    }

}
