import 'package:flutter/material.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/transaction_history_section/transaction_history_header.dart';
import 'package:responive_dashboard/widgets/transaction_history_section/transaction_iteam.dart';
import 'package:responive_dashboard/widgets/transaction_history_section/transaction_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 12,
        ),
        Text(
          '13 April 2022',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionListView(),
      ],
    );
  }
}
