import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/card/my_cart.dart';

class ThirdPart extends StatelessWidget {
  const ThirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        //   left: 24,
        right: 32,
        top: 40,
      ),
      child: Column(
        children: [
          MyCartSection(),
        ],
      ),
    );
  }
}
