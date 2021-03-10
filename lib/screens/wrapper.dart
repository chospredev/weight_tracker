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

    // Let's return either Authenticate or Home Widget dependently
    return mainUser == null ? Authenticate() : Home();
  }
}
