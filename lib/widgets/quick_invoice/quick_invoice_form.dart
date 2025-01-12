import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/quick_invoice/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type Customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type Customer Email')),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type Customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(title: 'Item mount', hint: 'Amount')),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    'Add more details',
                    style: AppStyles.styleSemiBold18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff4EB7F2),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Send Money',
                    style:
                        AppStyles.styleSemiBold18.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
