import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/income/income_chart.dart';
import 'package:responive_dashboard/widgets/income/income_header.dart';
import 'package:responive_dashboard/widgets/income/income_listview.dart';
import 'package:responive_dashboard/widgets/income/iteam_details.dart';

class IncomeSection extends StatelessWidget {
  const   IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      
      children: [
        IncomeHeader(),
        Expanded(
          child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: IncomeChart()),
              Expanded(flex: 3, child: IncomeListview()),
            ],
          ),
        )
      ],
    );
  }
}
