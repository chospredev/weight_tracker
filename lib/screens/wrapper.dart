import 'package:flutter/material.dart';
import 'package:weight_tracker/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Let's return either Authenticate or Home Widget dependently
    return Authenticate();
  }
}
