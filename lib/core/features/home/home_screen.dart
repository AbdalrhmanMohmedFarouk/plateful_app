import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Scaffold(
          backgroundColor: Colors.white,
          body:Row(
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
          //Column(children: []),
        ),
      ),
    );
  }
}
