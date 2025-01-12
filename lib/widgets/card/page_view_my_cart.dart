import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/card/custom_visa_cart.dart';

class PageViewMyCart extends StatelessWidget {
  const PageViewMyCart({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => const CustomVisaCart(),
        ));
  }
}
