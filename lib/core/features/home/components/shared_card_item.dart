import 'package:flutter/material.dart';

class SharedCardItem extends StatelessWidget {
  const SharedCardItem({
    super.key,
    this.width = 345,
    this.heightOfStack = 315,
    required this.imagePath,
    this.heightOfImage = 261,
    required this.nameOfPalte,
    required this.categoryOfPlate,
    required this.countryPalte,
    this.numberOfIngredients,
  });

  final double? width;
  final double? heightOfStack;
  final String imagePath;
  final double? heightOfImage;
  final String nameOfPalte;
  final String categoryOfPlate;
  final String countryPalte;
  final int? numberOfIngredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width,
          height: heightOfStack,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePath,
                    width: width,
                    height: heightOfImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 28,
                right: 12,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(31),
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      categoryOfPlate,
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF202020),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameOfPalte,
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              numberOfIngredients == null
                  ? Text(
                      countryPalte,
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF1E1E1E),
                      ),
                    )
                  : Text(
                      "$numberOfIngredients Ingredients",
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
