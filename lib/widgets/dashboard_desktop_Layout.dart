import 'dart:developer';

import 'package:flutter/material.dart';
//import 'package:responive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
//import 'package:responive_dashboard/widgets/card/custom_indactor.dart';
//import 'package:responive_dashboard/widgets/card/custom_visa_cart.dart';
//import 'package:responive_dashboard/widgets/card/my_cart.dart';
//import 'package:responive_dashboard/widgets/card/page_view_my_cart.dart';
import 'package:responive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responive_dashboard/widgets/income/income_chart.dart';
import 'package:responive_dashboard/widgets/income/income_section.dart';
import 'package:responive_dashboard/widgets/my_card_and_transaction_history_section.dart';
import 'package:responive_dashboard/widgets/third_part.dart';
//import 'package:responive_dashboard/widgets/quick_invoice/quick_invoice_section.dart';
//import 'package:responive_dashboard/widgets/third_part.dart';
//import 'package:responive_dashboard/widgets/transaction_history_section/transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
   // log(MediaQuery.of(context).size.width.toString());
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            // physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                //     fillOverscroll: true,
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: AllExpenseAndQuickInvoice(),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          MyCardAndTransactionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
