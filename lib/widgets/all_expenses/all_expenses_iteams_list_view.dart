import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/all_expenses_iteam.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/widgets/all_expenses/all_expenses_iteam.dart';

class AllExpensesIteamsListView extends StatefulWidget {
  const AllExpensesIteamsListView({
    super.key,
  });

  @override
  State<AllExpensesIteamsListView> createState() =>
      _AllExpensesIteamsListViewState();
}

class _AllExpensesIteamsListViewState extends State<AllExpensesIteamsListView> {
  int currentIndex = 0;
  final List<AllExpensesIteamModel> iteams = const [
    AllExpensesIteamModel(
        title: 'Balance',
        price: r'$20.22',
        image: Assets.imagesBalance,
        date: 'april 2022'),
    AllExpensesIteamModel(
        title: 'Income',
        price: r'$20.02',
        image: Assets.imagesIncome,
        date: 'april 2022'),
    AllExpensesIteamModel(
        title: 'Expenses',
        price: r'$20.22',
        image: Assets.imagesExpenses,
        date: 'april 2022')
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
              onTap: () {
                currentIndex = 0;
                setState(() {});
              },
              child: AllExpensesIteam(
                iteamModel: iteams[0],
                isSelected: currentIndex == 0,
              ),
            ),
          ),
       const   SizedBox(width: 8,),
          Expanded(
            child: GestureDetector(
              onTap: () {
                currentIndex = 1;
                setState(() {});
              },
              child: AllExpensesIteam(
                iteamModel: iteams[1],
                isSelected: currentIndex == 1,
              ),
            ),
          ),
       const   SizedBox(width: 8,),
          Expanded(
            child: GestureDetector(
              onTap: () {
                currentIndex = 2;
                setState(() {});
              },
              child: AllExpensesIteam(
                iteamModel: iteams[2],
                isSelected: currentIndex == 2,
              ),
            ),
          ),
      ]
    );
  }
}
