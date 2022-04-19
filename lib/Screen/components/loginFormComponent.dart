import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample_1/Screen/components/loginInputComponent.dart';
import 'package:sample_1/constant.dart';

double _heightSizedBox = 20;
bool _isCheck = true;

class LoginFormComponent extends StatefulWidget {
  const LoginFormComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginFormComponent> createState() => _LoginFormComponentState();
}

class _LoginFormComponentState extends State<LoginFormComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          StringRes.signIn,
          style: TextStyle(
            fontSize: fontSize_30,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: _heightSizedBox,
        ),
        Column(
          children: [
            const LoginInputComponent(),
            SizedBox(
              height: _heightSizedBox,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                    value: _isCheck,
                    checkColor: Colors.white,  // color of tick Mark
                    activeColor: Colors.orange,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck = value!;
                      });
                    }),
                const SizedBox(width: 10),
                const Text(
                  StringRes.remember,
                  style: TextStyle(
                    fontSize: fontSize_12
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
