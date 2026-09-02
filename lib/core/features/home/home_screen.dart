import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Morning, User",
          style: TextStyle(
            fontFamily: 'Hurricane',
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: Color(0xFF58544A),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, color: Color(0xFF404449)),
          ),
        ],
      ),
      body: Column(children: []),
    );
  }
}
