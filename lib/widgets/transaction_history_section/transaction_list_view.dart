import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/transaction_iteam_model.dart';
import 'package:responive_dashboard/widgets/transaction_history_section/transaction_iteam.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  final List<TransactionIteamModel> iteams = const [
    TransactionIteamModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithDrawel: true),
    TransactionIteamModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithDrawel: false),
    TransactionIteamModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithDrawel: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: iteams
          .map(
            (e) => TransactionIteam(transactionIteamModel: e),
          )
          .toList(),
    );

    
  }
}
