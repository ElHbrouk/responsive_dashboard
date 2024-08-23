import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class IncomeChartDesktop extends StatefulWidget {
  const IncomeChartDesktop({super.key});

  @override
  State<IncomeChartDesktop> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChartDesktop> {
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
          titlePositionPercentageOffset: touchedIndex == 0 ? 1.5 : null,
          value: 40.0,
          color: const Color(0xff208bc7),
          title: touchedIndex == 0 ? 'Design Service' : '40%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchedIndex == 0 ? null : Colors.white,
          ),
          radius: touchedIndex == 0 ? 65 : 50.0,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: touchedIndex == 1 ? 2 : null,
          value: 25.0,
          color: const Color(0xff4db7f2),
          title: touchedIndex == 1 ? 'Design Product' : '25%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchedIndex == 1 ? null : Colors.white,
          ),
          radius: touchedIndex == 1 ? 65 : 50.0,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: touchedIndex == 2 ? 1.4 : null,
          value: 20.0,
          color: const Color(0xff064060),
          title: touchedIndex == 2 ? 'Product royalty' : '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchedIndex == 2 ? null : Colors.white,
          ),
          radius: touchedIndex == 2 ? 65 : 50.0,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: touchedIndex == 3 ? 1.5 : null,
          value: 22.0,
          color: const Color(0xffe2decd),
          title: touchedIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: touchedIndex == 3 ? null : Colors.white,
          ),
          radius: touchedIndex == 3 ? 65.0 : 50.0,
        ),
      ],
    );
  }
}
