import 'package:flutter/material.dart';
import 'package:weight_tracker/services/auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final ServiceAuth _auth = ServiceAuth();

  final String _appBarText = 'Weight Tracker | Login';
  final String _loginText = 'Log In';
  final String _anonText = 'Anonymously';
  final String _loginButtonText = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text('$_appBarText'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 250.0, left: 90.0),
        child: Column(
          children: [
            Text(
              '$_loginText',
              style: TextStyle(fontSize: 36.0),
            ),
            Text(
              '$_anonText',
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
                child: Text('$_loginButtonText'),
                autofocus: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
