import 'package:flutter/material.dart';
import 'package:weight_tracker/screens/home/layout.dart';
import 'package:weight_tracker/services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ServiceAuth _auth = ServiceAuth();

  final _appBarText = 'Weight Tracker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_appBarText'),
        backgroundColor: Colors.green[500],
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
              icon: Icon(Icons.person),
              onPressed: () async {
                await _auth.logout();
              },
              label: Text('Logout')),
        ],
      ),
      body: Layout(),
    );
  }
}
