import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weight_tracker/models/user.dart';
import 'package:weight_tracker/screens/authenticate/authenticate.dart';
import 'package:weight_tracker/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainUser = Provider.of<MainUser>(context);

    print(mainUser);

    // let's return either Authenticate or Home Widget dependently
    // if user isn't logged in, displaying Authenticate widget
    // if it is, displaying Home widget
    return mainUser == null ? Authenticate() : Home();
  }
}
