import 'package:flutter/material.dart';
import 'package:plateful/core/features/search/components/category_result.dart';
import 'package:plateful/core/features/search/components/suggestion_item.dart';
import 'package:plateful/core/features/search/model/category_result_item.dart';

class SearchInputCard extends StatelessWidget {
  const SearchInputCard({
    super.key,
    required this.controller,
    required this.isSearching,
    required this.suggestions,
    required this.categoryResults,
    required this.onClear,
    required this.onBack,
    required this.onSuggestionTap,
  });

  final TextEditingController controller;
  final bool isSearching;
  final List<String> suggestions;
  final List<CategoryResult> categoryResults;
  final VoidCallback onClear;
  final VoidCallback onBack;
  final ValueChanged<String> onSuggestionTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEFF3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // Input row
          Row(
            children: [
              if (isSearching)
                IconButton(
                  icon: const Icon(Icons.arrow_back_rounded, color: Color(0xFF49454F)),
                  onPressed: onBack,
                )
              else
                const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  controller: controller,
                  style: const TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 16,
                    color: Color(0xFF1C1B1F),
                  ),
                  decoration: const InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontFamily: 'NotoSans',
                      color: Color(0xFF9E9E9E),
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              if (isSearching)
                IconButton(
                  icon: const Icon(Icons.close_rounded, color: Color(0xFF49454F)),
                  onPressed: onClear,
                )
              else
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.search, color: Color(0xFF49454F)),
                ),
            ],
          ),

          // Suggestions & categories (visible while typing)
          if (isSearching) ...[
            const Divider(height: 0.5, thickness: 0.5, color: Color(0xFFCAC4D0)),
            ...suggestions.asMap().entries.map((entry) => SuggestionItem(
                  text: entry.value,
                  isLast: entry.key == suggestions.length - 1,
                  onTap: () => onSuggestionTap(entry.value),
                )),
            const Divider(height: 1, thickness: 1, color: Color(0xFFBBBBC8)),
            ...categoryResults.asMap().entries.map((entry) => CategoryResultItem(
                  result: entry.value,
                  isLast: entry.key == categoryResults.length - 1,
                  onTap: () {},
                )),
          ],
        ],
      ),
    );
  }
}
