import 'package:flutter/material.dart';
import 'package:plateful/core/features/home/components/Custom_lagre_item.dart';
import 'package:plateful/core/features/home/components/Custom_title.dart';
import 'package:plateful/core/features/home/components/shared_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Morning, User",
                        style: TextStyle(
                          fontFamily: 'Hurricane',
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF58544A),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person, color: Color(0xFF404449)),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  CustomTitle(
                    text: "Today's Meal",
                    details: "Picked for you today",
                  ),
                  SizedBox(height: 16),
                  SharedCardItem(
                    imagePath: "assets/images/meal_1.png",
                    nameOfPalte: 'Spicy Arrabiata Penne',
                    categoryOfPlate: 'Vegetarian',
                    countryPalte: 'Italian',
                  ),
                  SizedBox(height: 16),
                  CustomTitle(text: "Greek", details: "Suggested cuisine"),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SharedCardItem(
                          imagePath: "assets/images/meal_1.png",
                          nameOfPalte: 'Spicy Arrabiata Penne',
                          categoryOfPlate: 'Vegetarian',
                          countryPalte: 'Pasta, Curry',
                          width: 176,
                          heightOfStack: 220,
                          heightOfImage: 176,
                        ),
                        SizedBox(width: 18),
                        SharedCardItem(
                          imagePath: "assets/images/meal_1.png",
                          nameOfPalte: 'Spicy Arrabiata Penne',
                          categoryOfPlate: 'Vegetarian',
                          countryPalte: 'Pasta, Curry',
                          width: 176,
                          heightOfStack: 220,
                          heightOfImage: 176,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  CustomTitle(
                    text: "Daily Selection",
                    details: "Random meals to explore",
                  ),
                  CustomLagreItem(
                    imagePath: "assets/images/meal_2.png",
                    nameOfPalte: "Spicy Arrabiata Penne",
                    countryPalte: "Italian",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTitle(text: "Meal to Prepare", details: "Today from your calendar"),
                  ),
                  SharedCardItem(
                    imagePath: "assets/images/meal_1.png",
                    nameOfPalte: 'Spicy Arrabiata Penne',
                    categoryOfPlate: 'Vegetarian',
                    numberOfIngredients: 8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
