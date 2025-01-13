import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/card/my_cart.dart';
import 'package:responive_dashboard/widgets/custom_background_container.dart';
import 'package:responive_dashboard/widgets/transaction_history_section/transaction_history_section.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 10,
        child: Column(
          children: [
            MyCartSection(),
            Divider(
              height: 20,
            ),
            TransactionHistorySection(),
          ],
        ));
  }
}
