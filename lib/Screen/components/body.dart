import 'package:flutter/material.dart';
import 'package:sample_1/Screen/components/logoComponent.dart';
import 'package:sample_1/Screen/components/loginFormComponent.dart';
import 'package:sample_1/Screen/components/loginButtonComponent.dart';
import 'package:sample_1/Screen/components/signUpComponent.dart';
import 'package:sample_1/constant.dart';

double _allPadding = 40;
double _heightSizedBox = 30;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [topColor, bottomColor],
          ),
        ),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            // child: SafeArea(
            child: SizedBox(
              height: height,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(_allPadding),
                    child: Column(
                      children: [
                        const LogoComponent(),
                        SizedBox(height: _heightSizedBox),
                        const LoginFormComponent(),
                        SizedBox(height: _heightSizedBox),
                        const LoginButtonComponent(),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const SignUpComponent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
