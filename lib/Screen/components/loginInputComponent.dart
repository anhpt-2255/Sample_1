import 'package:flutter/material.dart';
import 'package:sample_1/constant.dart';

class LoginInputComponent extends StatefulWidget {
  const LoginInputComponent({Key? key}) : super(key: key);

  @override
  State<LoginInputComponent> createState() => _LoginInputComponentState();
}

class _LoginInputComponentState extends State<LoginInputComponent> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const [
          EmailInput(
            hintText: StringRes.emailPlaceHolder,
          ),
          PasswordInput(
            hintText: StringRes.pwdPlaceHolder,
          ),
        ],
      ),
    );
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    this.hintText = '',
  }) : super(key: key);
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: fontSize_14),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    this.hintText = '',
  }) : super(key: key);
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: fontSize_14),
      keyboardType: TextInputType.none,
      obscureText: true,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
