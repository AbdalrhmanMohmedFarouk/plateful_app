import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled({
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
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return widget.errorMessage;
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
            prefixIcon: Icon(widget.prefixIcon, color: Colors.white),
            hintText: widget.hintText,
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
        SizedBox(height: widget.sizedBoxHeight),
      ],
    );
  }
}
