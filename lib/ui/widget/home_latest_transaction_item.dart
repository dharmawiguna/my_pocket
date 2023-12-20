import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_pocket/models/transaction_model.dart';
import 'package:my_pocket/shared/shared_methods.dart';
import 'package:my_pocket/shared/theme.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final TransactionModel transaction;

  const HomeLatestTransactionItem({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            transaction.transactionType?.action == 'cr'
                ? 'assets/icon_transaction_topup.png'
                : 'assets/icon_transaction_transfer.png',
            width: 48,
          ),
          // Image.network(
          //   transaction.transactionType!.thumbnail!,
          //   width: 48,
          // ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.transactionType!.name.toString(),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  DateFormat('MMM dd')
                      .format(transaction.createdAt ?? DateTime.now()),
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            formatCurrency(
              transaction.amount ?? 0,
              symbol: transaction.transactionType?.action == 'cr' ? '+ ' : '- ',
            ),
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
