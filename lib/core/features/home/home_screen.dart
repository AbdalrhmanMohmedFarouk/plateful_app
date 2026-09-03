import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          body: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
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
              Text(
                "Today’s Meal",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF232323),
                ),
              ),
              Text(
                "Picked for you today",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF232323),
                ),
              ),
              SizedBox(height: 16),
              SharedCardItem(
                imagePath: "assets/images/meal_1.png",
                nameOfPalte: 'Spicy Arrabiata Penne',
                categoryOfPlate: 'Vegetarian',
                countryPalte: 'Italian',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
