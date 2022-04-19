import 'package:flutter/material.dart';
import 'package:sample_1/constant.dart';

class SignUpComponent extends StatelessWidget {
  const SignUpComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black26,
      child: SizedBox.expand(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                StringRes.notHaveAcc,
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
              GestureDetector(
                child: const Text(
                  StringRes.signUp,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              // Navigator.pushNamed(context, SignUpScreen.routeName);
            ],
          ),
        ),
      ),
    );
  }
}
