import 'package:flutter/material.dart';

class DetailsImage extends StatefulWidget {
  const DetailsImage({
    super.key,
    this.width = 345,
    this.height = 261,
    required this.imagePath,
    required this.categoryOfPlate,
    required this.countryName,
    this.countryPalte,
    this.ingredients,
  });

  final double? width;
  final String imagePath;
  final double? height;
  final String categoryOfPlate;
  final String countryName;
  final String? countryPalte;
  final int? ingredients;

  @override
  State<DetailsImage> createState() => _DetailsImageState();
}

class _DetailsImageState extends State<DetailsImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    widget.imagePath,
                    width: widget.width,
                    height: widget.height,
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
                    child: Row(
                      children: [
                        Icon(Icons.sports_basketball), //check it
                        Text(
                          widget.countryName,
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF202020),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 28,
                right: 24,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(31),
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Icon(Icons.speaker_notes_outlined), //check it
                        Text(
                          widget.categoryOfPlate,
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF202020),
                          ),
                        ),
                      ],
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
                "Ingredients",
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ],
    );
  }
}
