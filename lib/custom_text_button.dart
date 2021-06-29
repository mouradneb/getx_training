import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  late final String text;
  late final VoidCallback onPressed;

  CustomTextButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
}
