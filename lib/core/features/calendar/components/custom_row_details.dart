import 'package:flutter/material.dart';

class CustomRowDetails extends StatelessWidget {
  const CustomRowDetails({super.key, required this.imagePath, required this.typeOfMeal, required this.nameOfMeal, required this.numberOfIngredients});
  final String imagePath;
  final String typeOfMeal;
  final String nameOfMeal;
  final String numberOfIngredients;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: Image.asset(
                imagePath,
                width: 75,
                height: 75,
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  typeOfMeal,
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF706E6E),
                  ),
                ),
                Text(
                  nameOfMeal,
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  "$numberOfIngredients Ingredients",
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF232323),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
