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
  String email = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ), //App Bar
      // Body pulls product manager.
      body: ListView(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (String _email) {
                setState(() {
                  email = _email;
                }); // SetState
              }, // On Changed Function (String Input)
            ), // Text Field
            TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              onChanged: (String _pass) {
                setState(() {
                  pass = _pass;
                }); // SetState
              }, // On Changed Function (String Input)
            ), // Text Field
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: () {

                print("Email: " + email);
                print("Pass: " + pass);
                Navigator.pushReplacementNamed(context, "/discovery");
              },
            ),
          ],
      ), // Column
    ); // Scaffold
  }
}
