import 'package:flutter/material.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/card/custom_visa_cart.dart';
import 'package:responive_dashboard/widgets/card/dots_indicators.dart';
import 'package:responive_dashboard/widgets/card/page_view_my_cart.dart';

class MyCartSection extends StatefulWidget {
  const MyCartSection({super.key});

  @override
  State<MyCartSection> createState() => _MyCartSectionState();
}

class _MyCartSectionState extends State<MyCartSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
      },
    );
    setState(() {});
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        PageViewMyCart(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicators(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
