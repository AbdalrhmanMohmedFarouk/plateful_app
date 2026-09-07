import 'package:flutter/material.dart';

class CustomData extends StatelessWidget {
  const CustomData({
    super.key,
    required this.month,
    required this.dayNumber,
    required this.dayName,
  });

  final String month;
  final String dayNumber;
  final String dayName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$month $dayNumber ',
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 21,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        Text(
          dayName,
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 21,
            fontWeight: FontWeight.w300,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Divider(color: Color(0xFFE1E1E1), thickness: 1, height: 1),
        ),
      ],
    );
  }
}
