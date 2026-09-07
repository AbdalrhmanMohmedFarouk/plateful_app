import 'package:flutter/material.dart';
import 'package:plateful/core/features/calendar/components/custom_data.dart';
import 'package:plateful/core/features/calendar/components/custom_row_details.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upcoming Meals',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF232323),
                  ),
                ),
                SizedBox(height: 32),
                CustomData(month: "Feb", dayNumber: "18", dayName: "Wednesday"),
                SizedBox(height: 18),
                CustomRowDetails(
                  imagePath: 'assets/images/meal_3.png',
                  typeOfMeal: 'Starter',
                  nameOfMeal: 'Spicy Arrabiata Penne',
                  numberOfIngredients: '12',
                ),
                SizedBox(height: 24),
                CustomData(month: "Feb", dayNumber: "19", dayName: "Thursday"),
                SizedBox(height: 18),
                CustomRowDetails(
                  imagePath: 'assets/images/meal_3.png',
                  typeOfMeal: 'Starter',
                  nameOfMeal: 'Spicy Arrabiata Penne',
                  numberOfIngredients: '12',
                ),
                SizedBox(height: 24),
                CustomRowDetails(
                  imagePath: 'assets/images/meal_3.png',
                  typeOfMeal: 'Starter',
                  nameOfMeal: 'Spicy Arrabiata Penne',
                  numberOfIngredients: '12',
                ),
                SizedBox(height: 24),
                CustomData(month: "Feb", dayNumber: "20", dayName: "Friday"),
                SizedBox(height: 18),
                CustomRowDetails(
                  imagePath: 'assets/images/meal_3.png',
                  typeOfMeal: 'Starter',
                  nameOfMeal: 'Spicy Arrabiata Penne',
                  numberOfIngredients: '12',
                ),
                SizedBox(height: 24),
                CustomData(month: "Feb", dayNumber: "21", dayName: "Saturday"),
                SizedBox(height: 18),
                CustomRowDetails(
                  imagePath: 'assets/images/meal_3.png',
                  typeOfMeal: 'Starter',
                  nameOfMeal: 'Spicy Arrabiata Penne',
                  numberOfIngredients: '12',
                ),
                SizedBox(height: 24),
                CustomRowDetails(
                  imagePath: 'assets/images/meal_3.png',
                  typeOfMeal: 'Starter',
                  nameOfMeal: 'Spicy Arrabiata Penne',
                  numberOfIngredients: '12',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
