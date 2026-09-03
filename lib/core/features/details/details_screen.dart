import 'package:flutter/material.dart';
import 'package:plateful/core/features/details/components/ingredient_item.dart';
import 'package:plateful/core/features/home/components/Custom_title.dart';

import 'components/details_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Meal to Prepare",
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined, color: Color(0xFF7E8287)),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  CustomTitle(
                    text: 'Spicy Arrabiata Penne',
                    details: 'From your calendar',
                  ),
                  SizedBox(height: 8),
                  DetailsImage(
                    imagePath: "assets/images/meal_1.png",
                    categoryOfPlate: "Chicken",
                    countryName: "Japanese",
                  ),
                  IngredientsList(
                    ingredients: [
                      "penne rigate:1 pound",
                      "olive oil:1/4 cup",
                      "garlic:3 cloves",
                      "chopped tomatoes:1 tin",
                      "red chilli flakes:1/2 teaspoon",
                    ],
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
