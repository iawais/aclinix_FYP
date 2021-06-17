import 'package:aclinix/pages/login.dart';
import 'package:flutter/material.dart';

import 'demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xFF322e8d),

      ),
      home: Login(),
    );
  }
}
