import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
              title: 'Design service',
              value: 40,
              isActive: currentIndex == 0),
          pieChartSectionData(
              title: 'Design product',
              value: 25,
              color: const Color(0xff4EB7F2),
              isActive: currentIndex == 1),
          pieChartSectionData(
              title: 'Product royalti',
              value: 20,
              color: const Color(0xff064061),
              isActive: currentIndex == 2),
          pieChartSectionData(
              title: 'Other',
              value: 22,
              color: const Color(0xffE2DECD),
              isActive: currentIndex == 3),
        ]);
  }

  PieChartSectionData pieChartSectionData(
          {required double value,
          required Color color,
          required String title,
          required bool isActive}) =>
      PieChartSectionData(
          titlePositionPercentageOffset: isActive ? 1.25 : null,
          color: color,
          value: value,
          title: isActive ? title : '$value%',
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: isActive ? null : Colors.white),
          // showTitle: false,
          radius: isActive ? 60 : 50);
}
