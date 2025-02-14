import 'package:flutter/material.dart';

class CustomIndactor extends StatelessWidget {
  const CustomIndactor({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration:const Duration(milliseconds: 300),
    height: 8,
    width:isActive? 32:8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: isActive?const Color(0xff4EB7F2):const Color(0xffE8E8E8)
    ),
  
    );
  }
}