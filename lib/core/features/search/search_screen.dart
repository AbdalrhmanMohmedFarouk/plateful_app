import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:plateful/core/features/search/components/custom_container.dart';
import 'package:plateful/core/features/search/components/search_input_card.dart';
import 'controller/search_controller.dart';

class SearchScreen extends StatelessWidget {
  // StatelessWidget — مش محتاجين state هنا خالص، كل حاجة في الـ Provider
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // create → بيعمل instance واحدة من الـ Provider وبيربطها بالـ widget tree
      // لما الشاشة دي تتشال من الـ tree، الـ Provider بيتعمل له dispose أوتوماتيك
      create: (_) => SearchProvider(),
      child: const _SearchScreenBody(),
    );
  }
}

// فصلنا الـ body في widget منفصلة عشان تقدر تستخدم context.watch داخل الـ Provider
class _SearchScreenBody extends StatelessWidget {
  const _SearchScreenBody();

  @override
  Widget build(BuildContext context) {
    // context.watch → بتسمع على التغييرات وبتعمل rebuild
    final provider = context.watch<SearchProvider>();

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
                'Search for Meal',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              const Text(
                'Find meals by name, country, ingredient or category.',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF232323),
                ),
              ),
              const SizedBox(height: 24),

              // الـ card بتقرأ من الـ provider بنفسها — مش بتاخد parameters
              const SearchInputCard(),

              // Recent & Popular بيظهروا بس لما مش بيكتب
              if (!provider.isSearching) ...[
                const SizedBox(height: 24),
                const Text(
                  'Recent Searches',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: provider.recentSearches
                      .map((term) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: CustomContainer(
                              text: term,
                              icon: Icons.search,
                              onTap: () => context
                                  .read<SearchProvider>()
                                  .selectSuggestion(term),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Popular Searches',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: provider.popularSearches
                      .map((term) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: CustomContainer(
                              text: term,
                              icon: Icons.trending_up,
                              onTap: () => context
                                  .read<SearchProvider>()
                                  .selectSuggestion(term),
                            ),
                          ))
                      .toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
