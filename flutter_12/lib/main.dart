import 'package:flutter/material.dart';
import 'package:flutter_12/pages/Home_Page.dart';
import 'package:flutter_12/pages/one.dart';
import 'package:flutter_12/pages/three.dart';
import 'package:flutter_12/pages/two.dart';

import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        'home': (context) => HomePage(),
        'one': (context) => One(),
        'two': (context) => Two(),
        'three': (context) => Three(),
      },
    );
  }
}
