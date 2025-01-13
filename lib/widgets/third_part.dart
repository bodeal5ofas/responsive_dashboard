import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/card/my_cart.dart';
import 'package:responive_dashboard/widgets/income/income_section.dart';
import 'package:responive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class ThirdPart extends StatelessWidget {
  const ThirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Padding(
    //   padding: EdgeInsets.only(
    //     //   left: 24,
    //     right: 32,
    //     top: 40,
    //   ),
    //   child:
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        MyCardAndTransactionHistorySection(),
        Expanded(child: IncomeSection())
      ],
    );
  }
}
