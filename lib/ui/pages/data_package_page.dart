import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/widget/button.dart';
import 'package:my_pocket/ui/widget/form.dart';
import 'package:my_pocket/ui/widget/package_item.dart';
import 'package:my_pocket/ui/widget/transfer_result_user_item.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paket Data"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: "+628",
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
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
              PackageItem(
                amount: 10,
                price: 30000,
              ),
              PackageItem(
                amount: 25,
                price: 30000,
              ),
              PackageItem(
                amount: 50,
                price: 30000,
                isSelected: true,
              ),
              PackageItem(
                amount: 100,
                price: 500000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () async {
              if (await Navigator.pushNamed(context, "/pin") == true) {
                Navigator.pushNamed(context, "/data-package-success");
              }
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
