import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';
import 'package:my_pocket/ui/widget/data_provider_item.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Beli Data",
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
            "From Wallet",
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
                    "1234 12354 1234",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance Rp. 2.000.000',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Select Provider",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const DataProviderItem(
            name: "Telkomsel",
            imageUrl: "assets/image_provider_telkomsel.png",
            isSelected: true,
          ),
          const DataProviderItem(
            name: "Indosat",
            imageUrl: "assets/image_provider_indosat.png",
          ),
          const DataProviderItem(
            name: "Singtel ID",
            imageUrl: "assets/image_provider_singtel.png",
          ),
          const SizedBox(
            height: 135,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {
              Navigator.pushNamed(context, "/data-package");
            },
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
