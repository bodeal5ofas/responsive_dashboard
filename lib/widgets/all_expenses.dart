import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/all_expenses_iteam.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/widgets/all_expenses_header.dart';
import 'package:responive_dashboard/widgets/all_expenses_iteam.dart';
import 'package:responive_dashboard/widgets/all_expenses_iteams_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 216,
            child: AllExpensesIteamsListView()),
        ],
      ),
    );
  }
}

