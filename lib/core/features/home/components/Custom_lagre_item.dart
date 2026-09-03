import 'package:flutter/material.dart';

class CustomLagreItem extends StatelessWidget {
  const CustomLagreItem({
    super.key,
    this.width = 380,
    this.heightOfStack = 345,
    required this.imagePath,
    this.heightOfImage = 261,
    required this.nameOfPalte,
    required this.countryPalte,
  });

  final double? width;
  final double? heightOfStack;
  final String imagePath;
  final double? heightOfImage;
  final String nameOfPalte;
  final String countryPalte;

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
                bottom: 0,
                child: Container(
                  decoration:BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16)),
                  ) ,
                  height: 50,
                  width: width,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 14,top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameOfPalte,
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Text(
                          countryPalte,
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,

                            color: Color(0xFFFFFFFF),
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

        // const SizedBox(height: 8),


      ],
    );
  }
}
