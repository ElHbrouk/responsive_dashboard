import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
        swapAnimationDuration: const Duration(milliseconds: 150),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0.0,
      titleSunbeamLayout: true,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, touchResponse) {
          setState(() {
            touchedIndex =
                touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: [
        PieChartSectionData(
          color: const Color(0xff208bc7),
          value: 0.4,
          showTitle: false,
          radius: touchedIndex == 0 ? 65 : 50.0,
        ),
        PieChartSectionData(
          color: const Color(0xff4db7f2),
          value: 0.25,
          showTitle: false,
          radius: touchedIndex == 1 ? 65 : 50.0,
        ),
        PieChartSectionData(
          color: const Color(0xff064060),
          value: 0.20,
          showTitle: false,
          radius: touchedIndex == 2 ? 65 : 50.0,
        ),
        PieChartSectionData(
          color: const Color(0xffe2decd),
          value: 0.22,
          showTitle: false,
          radius: touchedIndex == 3 ? 65.0 : 50.0,
        ),
      ],
    );
  }
}
