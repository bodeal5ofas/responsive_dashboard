import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responive_dashboard/models/all_expenses_iteam.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/all_expenses/all_expenses_iteam_header.dart';

class AciveAllExpensesIteam extends StatelessWidget {
  const AciveAllExpensesIteam({super.key, required this.iteamModel});
  final AllExpensesIteamModel iteamModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesIteamHeader(
            iteamModel: iteamModel,
            isSelected: true,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              iteamModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              iteamModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xffFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              iteamModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class InAciveAllExpensesIteam extends StatelessWidget {
  const InAciveAllExpensesIteam({super.key, required this.iteamModel});
  final AllExpensesIteamModel iteamModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesIteamHeader(iteamModel: iteamModel, isSelected: false),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              iteamModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              iteamModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              iteamModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          )
        ],
      ),
    );
  }
}
