import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responive_dashboard/widgets/income/income_section.dart';
import 'package:responive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: DashboardMobileLayout()),
      ],
    );
  }
}

