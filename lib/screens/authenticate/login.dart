import 'package:flutter/material.dart';
import 'package:weight_tracker/services/auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final ServiceAuth _auth = ServiceAuth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.green[500],
          title: Text('Weight Tracker | Login'),
          centerTitle: true,
        ),
        body: Container(
            margin: EdgeInsets.only(top: 250.0, left: 90.0),
            child: Column(
              children: [
                Text(
                  'Log In',
                  style: TextStyle(fontSize: 36.0),
                ),
                Text(
                  'Anonymously',
                  style: TextStyle(fontSize: 36.0),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: RaisedButton(
                    color: Colors.blue[400],
                    textColor: Colors.white,
                    onPressed: () async {
                      dynamic result = await _auth.loginAnonymously();
                      if (result == null) {
                        print('Error logging in.');
                      } else {
                        print('Logged in successfully.');
                        print(result.uid);
                      }
                    },
                    child: Text('Login'),
                    autofocus: false,
                  ),
                ),
              ],
            )));
  }
}
