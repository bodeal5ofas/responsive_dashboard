import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/all_expenses_iteam.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/widgets/all_expenses/all_expenses_header.dart';
import 'package:responive_dashboard/widgets/all_expenses/all_expenses_iteam.dart';
import 'package:responive_dashboard/widgets/all_expenses/all_expenses_iteams_list_view.dart';
import 'package:responive_dashboard/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesIteamsListView(),
        ],
      ),
    );
  }
}
