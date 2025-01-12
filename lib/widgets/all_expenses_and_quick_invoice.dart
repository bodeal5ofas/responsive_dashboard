import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responive_dashboard/widgets/quick_invoice/quick_invoice_section.dart';

class AllExpenseAndQuickInvoice extends StatelessWidget {
  const AllExpenseAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoiceSection(),
          ],
        ),
      ),
    );
  }
}
