import 'package:flutter/material.dart';
import 'package:sample_1/constant.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "image/Connextion_Ico.png",
              height: 105,
              width: 145,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 20),
            Text(
              StringRes.logo_1,
              style: TextStyle(
                fontSize: fontSize_30,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              StringRes.logo_2,
              style: TextStyle(
                fontSize: fontSize_30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          StringRes.slogan,
          style: TextStyle(
            fontSize: fontSize_14,
            letterSpacing: 1,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
