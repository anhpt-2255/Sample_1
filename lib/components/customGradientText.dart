import 'package:flutter/material.dart';
import 'package:sample_1/constant.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [topColor, bottomColor],
      ).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize_20,
          )),
    );
  }
}
