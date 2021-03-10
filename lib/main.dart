import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:weight_tracker/models/user.dart';
import 'package:weight_tracker/screens/wrapper.dart';
import 'package:weight_tracker/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MainUser>.value(
      value: ServiceAuth().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weight Tracker',
        home: Wrapper(),
      ),
    );
  }
}
