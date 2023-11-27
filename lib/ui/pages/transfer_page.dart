import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';
import 'package:my_pocket/ui/widget/form.dart';
import 'package:my_pocket/ui/widget/transfer_recent_item.dart';
import 'package:my_pocket/ui/widget/transfer_result_user_item.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer"),
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
            "Search",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: "by username",
            isShowTitle: false,
          ),
          // buildRecentUser(),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {
              Navigator.pushNamed(context, "/transfer-amount");
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUser() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent User",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferResentUserItem(
            imageUrl: 'assets/image_profile.png',
            name: 'Dharma',
            username: 'dharma',
            isVerified: true,
          ),
          const TransferResentUserItem(
            imageUrl: 'assets/image_profile.png',
            name: 'Dharma',
            username: 'dharma',
            isVerified: false,
          ),
          const TransferResentUserItem(
            imageUrl: 'assets/image_profile.png',
            name: 'Dharma',
            username: 'dharma',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Result",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              TransferResultUserItem(
                imageUrl: 'assets/image_profile.png',
                name: 'Dharma',
                username: 'dharma',
                isVerified: true,
              ),
              TransferResultUserItem(
                imageUrl: 'assets/image_profile.png',
                name: 'Dharma',
                username: 'dharma',
                isVerified: false,
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
