import 'package:flutter/material.dart';
import 'package:plateful/core/features/search/components/category_result.dart';
import 'package:plateful/core/features/search/components/custom_container.dart';
import 'package:plateful/core/features/search/components/search_input_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  final List<String> _suggestions = [
    'Spicy Arrabiata Penne',
    'Spicy Penne',
    'Spicy',
  ];

  final List<CategoryResult> _categoryResults = [
    CategoryResult(name: 'Greek', type: 'Cuisine'),
    CategoryResult(name: 'Chicken', type: 'Ingredient'),
    CategoryResult(name: 'Vegetarian', type: 'Category'),
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _isSearching = _searchController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onClear() => _searchController.clear();

  void _onBack() {
    _searchController.clear();
    FocusScope.of(context).unfocus();
  }

  void _onSuggestionTap(String value) {
    _searchController.text = value;
    _searchController.selection =
        TextSelection.fromPosition(TextPosition(offset: value.length));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                "Search for Meal",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              const Text(
                "Find meals by name, country, ingredient or category.",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF232323),
                ),
              ),
              const SizedBox(height: 24),

              SearchInputCard(
                controller: _searchController,
                isSearching: _isSearching,
                suggestions: _suggestions,
                categoryResults: _categoryResults,
                onClear: _onClear,
                onBack: _onBack,
                onSuggestionTap: _onSuggestionTap,
              ),

              if (!_isSearching) ...[
                const SizedBox(height: 24),
                const Text(
                  "Recent Searches",
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CustomContainer(text: "Greek", icon: Icons.search),
                    const SizedBox(width: 8),
                    CustomContainer(text: "Italian", icon: Icons.search),
                    const SizedBox(width: 8),
                    CustomContainer(text: "Chicken", icon: Icons.search),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  "Popular Searches",
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CustomContainer(text: "Greek", icon: Icons.trending_up),
                    const SizedBox(width: 8),
                    CustomContainer(text: "Chicken", icon: Icons.trending_up),
                    const SizedBox(width: 8),
                    CustomContainer(text: "Beef", icon: Icons.trending_up),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
