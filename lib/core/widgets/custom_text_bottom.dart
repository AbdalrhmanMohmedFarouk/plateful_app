import 'package:flutter/material.dart';

class CustomTextBottom extends StatelessWidget {
  const CustomTextBottom({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'NotoSans',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFFFFFF),
          decoration: TextDecoration.underline,
          decorationColor: Color(0xFFFFFFFF),
          decorationThickness: 1.6
        ),
      ),
    );
  }
}
