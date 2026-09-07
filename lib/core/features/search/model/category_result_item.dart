import 'package:flutter/material.dart';
import 'package:plateful/core/features/search/components/category_result.dart';

class CategoryResultItem extends StatelessWidget {
  const CategoryResultItem({
    super.key,
    required this.result,
    required this.isLast,
    required this.onTap,
  });

  final CategoryResult result;
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xFFC6CCE5),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'A',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3C4472),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      result.name,
                      style: const TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1C1B1F),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      result.type,
                      style: const TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 13,
                        color: Color(0xFF6B6B80),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (!isLast)
          const Divider(
            height: 0.5,
            thickness: 0.5,
            color: Color(0xFFCAC4D0),
            indent: 70,
          ),
      ],
    );
  }
}
