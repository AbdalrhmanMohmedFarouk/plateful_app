import 'package:flutter/material.dart';
import 'package:plateful/core/features/auth/components/background_image.dart';
import 'package:plateful/core/features/auth/components/text_on_background.dart';
import 'package:plateful/core/widgets/Custom_elevated_button.dart';
import 'package:plateful/core/widgets/custom_text_bottom.dart';
import 'login_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Center(
            child: Column(
              children: [
                Spacer(),
                TextOnBackground(),
                CustomElevatedButton(
                  text: "Continue with Google",
                  svgIcon: "assets/svg/google_icon.svg",
                  textColor: Colors.grey,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  borderRadiusWidth: 10,
                  borderRadiusColor: Colors.transparent,
                  onPressed: () {
                    print("Go to Google");
                  },
                ),
                SizedBox(height: 16),
                CustomElevatedButton(
                  text: "Continue with Email",
                  borderRadiusWidth: 0.5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 72, top: 24),
                  child: CustomTextBottom(
                    text: "Continue as Guest",
                    onPressed: () {
                      print("done");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
