import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create Account\nSuccessfully",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            "Grow Your Finance Start\nTogether With Us",
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: "Get Started",
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            },
            width: 183,
          )
        ],
      )),
    );
  }
}
