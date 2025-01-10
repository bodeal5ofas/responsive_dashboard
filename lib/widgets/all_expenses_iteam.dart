import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responive_dashboard/models/all_expenses_iteam.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/acive_and_inactive_all_expenses_iteam.dart';

class AllExpensesIteam extends StatelessWidget {
  const AllExpensesIteam(
      {super.key, required this.iteamModel, required this.isSelected});
  final AllExpensesIteamModel iteamModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? AciveAllExpensesIteam(iteamModel: iteamModel,)
        : InAciveAllExpensesIteam(iteamModel: iteamModel);
  }
}
