import 'package:flutter/material.dart';
import 'package:flutter_examples/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(),
        body: const LoginPage(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'BUILDING MATERIALS STORE ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      backgroundColor: Colors.yellow,
      centerTitle: true,
      elevation: 0,
    );
  }
}
