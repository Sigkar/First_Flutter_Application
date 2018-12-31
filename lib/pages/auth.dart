import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  
  String _email = "";
  String _pass = "";
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ), //App Bar
      // Body pulls product manager.
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Image.asset('assets/random-logo.png', height: 100.0),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              onChanged: (String email) {
                setState(() {
                  _email = email;
                }); // SetState
              }, // On Changed Function (String Input)
            ), // Text Field
            TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              onChanged: (String pass) {
                setState(() {
                  _pass = pass;
                }); // SetState
              }, // On Changed Function (String Input)
            ), // Text Field
            SizedBox(height: 10.0),
            SwitchListTile(
              value: _acceptTerms,
              onChanged: (bool value) {
                setState(() {
                  _acceptTerms = value;
                });
              },
              title: Text("Accept Terms (Dummy)"),
            ),
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: () {
                print("Email: " + _email);
                print("Pass: " + _pass);
                Navigator.pushReplacementNamed(context, "/discovery");
              },
            ),
          ],
        ), // Column
      ),
    ); // Scaffold
  }
}
