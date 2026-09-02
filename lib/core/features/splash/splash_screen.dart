import 'package:flutter/material.dart';
import 'package:plateful/core/features/auth/authentication_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return AuthenticationScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/splash/backGround.png',
                fit: BoxFit.cover,
                color: Colors.grey,
                colorBlendMode: BlendMode.saturation,
              ),
            ),
            Center(
              child: Image.asset(
                "assets/splash/burger.png",
                width: 250,
                height: 400,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 41),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "Plateful",
                      style: TextStyle(
                        fontSize: 61,
                        color: Color(0xFFFFCE52),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'FleurDeLeah',
                      ),
                    ),

                    Text(
                      "MEAL PLANNER",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NotoSans',
                      ),
                    ),

                    SizedBox(height: 42),

                    Text(
                      "Your meal planning,\nserved on a full plate.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xE5FFFFFF),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'CormorantInfant',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
