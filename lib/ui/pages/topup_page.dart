import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/bank_item.dart';
import 'package:my_pocket/ui/widget/button.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Top Up",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Wallet",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/image_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "0812121212212",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Dharma Wiguna",
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Select Bank",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const BankItem(
            imageUrl: "assets/image_bank_bca.png",
            bankName: "Bank BCA",
            isSelected: true,
          ),
          const BankItem(
            imageUrl: "assets/image_bank_bni.png",
            bankName: "Bank BNI",
          ),
          const BankItem(
            imageUrl: "assets/image_bank_mandiri.png",
            bankName: "Bank Mandiri",
          ),
          const BankItem(
            imageUrl: "assets/image_bank_ocbc.png",
            bankName: "Bank OCBC",
          ),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/topup-amount',
              );
            },
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
