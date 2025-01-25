import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/custom_background_container.dart';
import 'package:responive_dashboard/widgets/income/income_body.dart';
import 'package:responive_dashboard/widgets/income/income_chart.dart';
import 'package:responive_dashboard/widgets/income/income_header.dart';
import 'package:responive_dashboard/widgets/income/income_listview.dart';
import 'package:responive_dashboard/widgets/income/iteam_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeBody(),
        ],
      ),
    );
  }
}
