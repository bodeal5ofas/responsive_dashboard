import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/custom_background_container.dart';
import 'package:responive_dashboard/widgets/quick_invoice/lastes_transation.dart';
import 'package:responive_dashboard/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:responive_dashboard/widgets/quick_invoice/quick_invoice_header.dart';
import 'package:responive_dashboard/widgets/quick_invoice/title_text_field.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 24, right: 24, top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LastesTransation(),
          Divider(
            height: 24,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
