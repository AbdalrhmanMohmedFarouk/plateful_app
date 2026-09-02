import 'package:flutter/material.dart';
import 'package:plateful/core/features/auth/components/background_image.dart';
import 'package:plateful/core/features/auth/components/text_on_background.dart';
import 'package:plateful/core/features/auth/register_screen.dart';
import 'package:plateful/core/features/home/home_screen.dart';
import 'package:plateful/core/widgets/Custom_elevated_button.dart';
import 'package:plateful/core/widgets/custom_text_bottom.dart';
import 'package:plateful/core/widgets/custom_text_form_filed.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
          children: [
            BackgroundImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Spacer(),
                    TextOnBackground(beforeNow: "Sign in"),
                    CustomTextFormFiled(
                      controller: emailController,
                      prefixIcon: Icons.email_outlined,
                      hintText: "Email Address",
                    ),
                    CustomTextFormFiled(
                      controller: passwordController,
                      prefixIcon: Icons.lock_outline,
                      hintText: "Password",
                    ),
                    CustomElevatedButton(
                      text: "SIGN IN",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return HomeScreen();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 58),
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Text(
                            "Don't have an account?  ",
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                          CustomTextBottom(
                            text: "Join Us",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return RegisterScreen();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
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
