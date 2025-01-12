import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/card/custom_indactor.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding:const EdgeInsets.only(right: 8.0),
          child: CustomIndactor(isActive: currentPageIndex==index),
        ),
      ),
    );
  }
}
