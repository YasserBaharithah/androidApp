import 'package:flutter/material.dart';
import 'package:micardproject/screens/control_page.dart';
import 'package:micardproject/screens/login_page.dart';
import 'package:micardproject/screens/profile_page.dart';
import 'package:micardproject/screens/task_page.dart';

import 'component/animated_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const AnimatedSplash(),
      routes: {
        'login': (context) => const Login(),
        'control': (context) => const ControlPage(),
        'profile': (context) => const Profile(),
        'task': (context) => TaskPage(),
      },
    );
  }
}
