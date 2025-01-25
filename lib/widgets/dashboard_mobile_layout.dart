import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responive_dashboard/widgets/income/income_section.dart';
import 'package:responive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenseAndQuickInvoice(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MyCardAndTransactionHistorySection(),
          ),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
