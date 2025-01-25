import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/income/detailed_income_chart.dart';
import 'package:responive_dashboard/widgets/income/income_chart.dart';
import 'package:responive_dashboard/widgets/income/income_listview.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
   // log(width.toString());
    return (width >= 1200 && width <= 1345)
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: IncomeChart()),
              Expanded(flex: 6, child: IncomeListview()),
            ],
          );
  }
}
