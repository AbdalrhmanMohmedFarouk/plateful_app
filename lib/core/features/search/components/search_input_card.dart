import 'package:flutter/material.dart';
import 'package:plateful/core/features/search/controller/search_controller.dart';
import 'package:plateful/core/features/search/model/category_result_item.dart';
import 'package:provider/provider.dart';

import 'package:plateful/core/features/search/components/suggestion_item.dart';


class SearchInputCard extends StatelessWidget {
  const SearchInputCard({super.key});

  // مش بتاخد أي parameters — بتقرأ كل حاجة من الـ Provider مباشرة

  @override
  Widget build(BuildContext context) {
    // context.watch → بتعيد بناء الـ widget دي كل ما الـ provider يتغير
    final provider = context.watch<SearchProvider>();

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEEFF3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // ── Input row ──────────────────────────────────────────────────────
          Row(
            children: [
              if (provider.isSearching)
                IconButton(
                  icon: const Icon(Icons.arrow_back_rounded,
                      color: Color(0xFF49454F)),
                  onPressed: () {
                    // context.read → بتنادي method بس من غير ما تعمل rebuild
                    context.read<SearchProvider>().clearSearch();
                    FocusScope.of(context).unfocus();
                  },
                )
              else
                const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  // الـ controller جاي من الـ provider — مش محتاج تعمله هنا
                  controller: provider.controller,
                  style: const TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 16,
                    color: Color(0xFF1C1B1F),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Search',
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
              if (provider.isSearching)
                IconButton(
                  icon: const Icon(Icons.close_rounded,
                      color: Color(0xFF49454F)),
                  onPressed: () => context.read<SearchProvider>().clearSearch(),
                )
              else
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.search, color: Color(0xFF49454F)),
                ),
            ],
          ),

          // ── Suggestions & categories ───────────────────────────────────────
          if (provider.isSearching) ...[
            const Divider(height: 0.5, thickness: 0.5, color: Color(0xFFCAC4D0)),

            // Suggestions
            ...provider.suggestions.asMap().entries.map(
                  (entry) => SuggestionItem(
                    text: entry.value,
                    isLast: entry.key == provider.suggestions.length - 1,
                    onTap: () =>
                        context.read<SearchProvider>().selectSuggestion(entry.value),
                  ),
                ),

            const Divider(height: 1, thickness: 1, color: Color(0xFFBBBBC8)),

            // Category results
            ...provider.categoryResults.asMap().entries.map(
                  (entry) => CategoryResultItem(
                    result: entry.value,
                    isLast: entry.key == provider.categoryResults.length - 1,
                    onTap: () {},
                  ),
                ),
          ],
        ],
      ),
    );
  }
}
