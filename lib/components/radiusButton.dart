import 'package:flutter/material.dart';
import 'package:sample_1/components/customGradientText.dart';
import 'package:sample_1/constant.dart';

class RadiusButton extends StatelessWidget {
  const RadiusButton({
    Key? key,
    this.text = '',
    this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: heightButton,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusButton),
        ),
        color: Colors.white,
        onPressed: press,
        child: GradientText(text),
      ),
    );
  }
}
