import 'package:flutter/material.dart';
import 'package:my_pocket/shared/theme.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String amount;
  final String time;

  const HomeLatestTransactionItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.amount,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 48,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  time,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
