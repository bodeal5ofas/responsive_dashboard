import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responive_dashboard/widgets/adaptive_layout.dart';
import 'package:responive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responive_dashboard/widgets/dashboard_desktop_Layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: MediaQuery.of(context).size.width < 800 ?const CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    globalKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobile: (context) => const DashboardMobileLayout(),
        tablet: (context) => const DashboardTabletLayout(),
        desktop: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
