import 'package:flutter/material.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/all_expenses/time_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Text('All Expenses',style: AppStyles.styleSemiBold20(context),),
     const Spacer(),
   const   TimeOptions(),
    ],);
  }
}