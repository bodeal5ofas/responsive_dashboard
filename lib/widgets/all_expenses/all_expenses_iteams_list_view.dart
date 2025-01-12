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
      children: iteams.asMap().entries.map(
        (e) {
          int index = e.key;
          var iteam = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: AllExpensesIteam(
                  iteamModel: iteam,
                  isSelected: currentIndex == index,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
