import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/transaction_iteam_model.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class TransactionIteam extends StatelessWidget {
  const TransactionIteam({super.key, required this.transactionIteamModel});
  final TransactionIteamModel transactionIteamModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(
          transactionIteamModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionIteamModel.date,
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionIteamModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(color: transactionIteamModel.isWithDrawel?const Color(0xffF3735E):const Color(0xff7DD97B) ),
        ),
      ),
    );
  }
}
