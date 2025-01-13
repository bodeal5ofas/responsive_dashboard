import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(pieChartData()));
  }

  PieChartData pieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            currentIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          pieChartSectionData(
              color: const Color(0xff208CC8),
              value: 40,
              isActive: currentIndex == 0),
          pieChartSectionData(
              value: 25,
              color: const Color(0xff4EB7F2),
              isActive: currentIndex == 1),
          pieChartSectionData(
              value: 20,
              color: const Color(0xff064061),
              isActive: currentIndex == 2),
          pieChartSectionData(
              value: 22,
              color: const Color(0xffE2DECD),
              isActive: currentIndex == 3),
        ]);
  }

  PieChartSectionData pieChartSectionData(
          {required double value,
          required Color color,
          required bool isActive}) =>
      PieChartSectionData(
          color: color,
          value: value,
          showTitle: false,
          radius: isActive ? 60 : 50);
}
