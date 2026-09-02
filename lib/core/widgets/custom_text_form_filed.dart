import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled({
    super.key,
    required this.controller,
    this.errorMessage = "Please enter your email or Password",
    required this.prefixIcon,
    required this.hintText,
    this.sizedBoxHeight = 16,
  });

  final TextEditingController controller;
  final String errorMessage;

  final IconData prefixIcon;

  final String hintText;

  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errorMessage;
            }
            return null;
          },
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon, color: Colors.white),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white, width: 1.5),
            ),
          ),
        ),
        SizedBox(height: sizedBoxHeight),
      ],
    );
  }
}
