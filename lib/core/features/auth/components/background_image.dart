import 'package:flutter/material.dart';
class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          //Problem Can't Mix
          child: Image.asset(
            "assets/images/backGroundAuthImage.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Image.asset("assets/images/authImage.png", fit: BoxFit.cover),
        ),
      ],
    );
  }
}
