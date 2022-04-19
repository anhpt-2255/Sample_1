import 'package:flutter/material.dart';
import 'package:sample_1/components/radiusButton.dart';
import 'package:sample_1/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double _sizeSizedBox = 30;

class LoginButtonComponent extends StatelessWidget {
  const LoginButtonComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadiusButton(
          text: StringRes.getStarted,
          press: () {},
        ),
        const SizedBox(height: _sizeSizedBox),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.facebook),
              onPressed: null,
              iconSize: 50,
            ),
            SizedBox(width: _sizeSizedBox),
            IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.twitterSquare),
              onPressed: null,
              iconSize: 50,
            ),
          ],
        ),
        const SizedBox(height: _sizeSizedBox),
        const Text(
          StringRes.forgotPwd,
          style: TextStyle(
            fontSize: fontSize_14,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}
