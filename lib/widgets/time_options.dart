import 'package:flutter/material.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(
            18,
          )),
      child: const Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.arrow_downward_outlined,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}
