import 'package:flutter/material.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(
            18,
          )),
      child:  Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
        const  SizedBox(
            width: 18,
          ),
         const Icon(
            Icons.arrow_downward_outlined,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}
