import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer ({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFCAC4D0),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8,6,16,6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             Icon(
              icon,
              size: 18,
              color: Color(0xFF65558F),
            ),
            const SizedBox(width: 8),
             Text(
              text,
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF49454F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
