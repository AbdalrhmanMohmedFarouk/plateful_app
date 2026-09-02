import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.svgIcon,
    this.widthOfSvgIcon = 15,
    this.heightOfSvgIcon = 20,
    this.textColor = const Color(0xFFFFFFFF),
    this.backgroundColor = Colors.black,
    this.foregroundColor = Colors.white,
    this.borderRadius = 10,
    this.borderRadiusColor = const Color(0xFFFFFFFF),
    this.borderRadiusWidth = 1,
  });

  final VoidCallback onPressed;

  final String text;
  final Color textColor;

  final String? svgIcon;
  final double? widthOfSvgIcon;
  final double? heightOfSvgIcon;

  final Color backgroundColor;

  final Color foregroundColor;

  final double borderRadius;

  final Color borderRadiusColor;

  final double borderRadiusWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderRadiusColor, width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgIcon != null) ...[
              SvgPicture.asset(
                "$svgIcon",
                width: widthOfSvgIcon,
                height: heightOfSvgIcon,
              ),
              SizedBox(width: 8),
            ],
            Text(
              text,
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
