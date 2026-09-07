import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({
    super.key,
    required this.text,
    required this.isLast,
    required this.onTap,
  });

  final String text;
  final bool isLast;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: isLast
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )
              : BorderRadius.zero,
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 15,
                color: Color(0xFF1C1B1F),
              ),
            ),
          ),
        ),
        if (!isLast)
          const Divider(
            height: 0.5,
            thickness: 0.5,
            color: Color(0xFFCAC4D0),
            indent: 16,
            endIndent: 16,
          ),
      ],
    );
  }
}
