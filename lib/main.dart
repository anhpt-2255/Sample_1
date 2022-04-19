import 'package:flutter/material.dart';
import 'package:sample_1/Screen/loginScreen.dart';
import 'package:sample_1/themeData.dart';
import 'package:sample_1/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login screen',
      theme: themeData(),
      initialRoute: loginRoutes,
      routes: routes,
    );
  }
}
