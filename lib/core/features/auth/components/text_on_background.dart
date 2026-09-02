import 'package:flutter/material.dart';

class TextOnBackground extends StatelessWidget {
  const TextOnBackground ({super.key,this.beforeNow="Join Us"});
  final String beforeNow;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 240,
        height: 150,
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  beforeNow,
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    color: Color(0xFFFFFFFF),
                    fontSize: 36,
                  ),
                ),
                Text(
                  " Now",
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
          ],
        ),
      ),
    );
  }
}
