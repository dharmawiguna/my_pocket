import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Transfer Successfully!",
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
            "Use the money wisely and\nyour finance",
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: "Back To Home",
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
