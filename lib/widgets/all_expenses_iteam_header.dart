import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responive_dashboard/models/all_expenses_iteam.dart';

class AllExpensesIteamHeader extends StatelessWidget {
  const AllExpensesIteamHeader({
    super.key,
    required this.iteamModel, required this.isSelected,
  });
  final bool isSelected;
  final AllExpensesIteamModel iteamModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            backgroundColor:isSelected?Colors.white.withOpacity(0.11) :const Color(0xffFAFAFA),
            radius: 23,
            child: Center(
                child: SvgPicture.asset(
              iteamModel.image,
              colorFilter:isSelected?
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn):null,
            ),),),
        const Spacer(),
         Icon(
          Icons.arrow_forward_ios,
          color:isSelected? Colors.white:null,
        )
      ],
    );
  }
}
