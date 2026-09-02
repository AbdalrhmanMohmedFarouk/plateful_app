import 'package:flutter/material.dart';
import 'package:plateful/core/widgets/Custom_elevated_button.dart';
import 'package:plateful/core/widgets/custom_text_bottom.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            //Problem Can't Mix
            child: Image.asset(
              "assets/images/backGroundAuthImage.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              "assets/images/authImage.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Join Us ",
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        color: Color(0xFFFFFFFF),
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      "Now",
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        color: Color(0xFFFFFFFF),
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Start planning your meals today.",
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    color: Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: CustomElevatedButton(
                    text: "Continue with Google",
                    svgIcon: "assets/svg/google.svg",
                    textColor: Colors.grey,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    borderRadiusColor: Colors.transparent,
                    onPressed: () {
                      print("Go to Google");
                    },
                  ),
                ),
                SizedBox(height: 16),
                CustomElevatedButton(
                  text: "Continue with Email",
                  borderRadius: 24,
                  borderRadiusWidth: 0.5,
                  onPressed: () {
                    print("gp to registration");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context) {
                    //       return LoginScreen();
                    //     },
                    //   ),
                    // );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:72,top: 24 ),
                  child: CustomTextBottom(
                    text: "Continue as Guest",
                    onPressed: () {
                      print("done");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) {
                      //       return HomeScreen();
                      //     },
                      //   ),
                      // );
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
