import 'package:flutter/material.dart';
import 'package:sample_1/Screen/components/body.dart';

const loginRoutes = '/login';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
