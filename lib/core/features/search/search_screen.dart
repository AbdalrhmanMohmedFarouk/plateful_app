import 'package:flutter/material.dart';
import 'package:plateful/core/features/search/components/custom_container.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Search for Meal",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                "Find meals by name, country, ingredient or category.",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF232323),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search",
                  filled: true,
                  fillColor: Color(0xFFEEEFF3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Recent Searches",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  CustomContainer(text: "Greek", icon: Icons.search),
                  SizedBox(width:8 ,),
                  CustomContainer(text: "Italian", icon: Icons.search),
                  SizedBox(width:8 ,),
                  CustomContainer(text: "Chicken", icon: Icons.search),
                ],
              ),
              SizedBox(height: 32,),
              Text(
                "Popular Searches",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  CustomContainer(text: "Greek", icon: Icons.trending_up),
                  SizedBox(width:8 ,),
                  CustomContainer(text: "Chicken", icon: Icons.trending_up),
                  SizedBox(width:8 ,),
                  CustomContainer(text: "Beef", icon: Icons.trending_up),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
