import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/adaptive_layout.dart';
import 'package:responive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responive_dashboard/widgets/dashboard_desktop_Layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobile: (context) => const SizedBox(),
        tablet: (context) => const SizedBox(),
        desktop: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
