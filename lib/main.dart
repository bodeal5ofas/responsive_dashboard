import 'package:flutter/material.dart';
import 'package:responive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoardApp());
}
class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}