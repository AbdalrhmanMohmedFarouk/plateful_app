import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.text,  this.details});
final String text;
final String? details;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF232323),
          ),
        ),
        if (details != null)
          Text(
            details!,
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Color(0xFF232323),
            ),
          ),
      ],
    );
  }
}
