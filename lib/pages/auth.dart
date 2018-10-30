import 'package:flutter/material.dart';

// import ''

class AuthPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    @override
      return _AuthPageState();
  }
}
class _AuthPageState extends State<AuthPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ), //App Bar
      // Body pulls product manager.
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (String title) {
                setState(() {

                }); // SetState
              }, // On Changed Function (String Input)
            ), // Text Field
            TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',

              ),
              onChanged: (String description) {
                setState(() {

                }); // SetState
              }, // On Changed Function (String Input)
            ), // Text Field
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/discovery");
              },
            ),
          ],
        ),
      ), // Column
    ); // Scaffold
  }
}
