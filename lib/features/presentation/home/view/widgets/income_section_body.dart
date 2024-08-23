import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/income_chart.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/income_chart_desktop.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750 
        ? const Padding(
            padding: EdgeInsets.all(16.0),
            child: IncomeChartDesktop(),
          )
        : const Row(
            children: <Widget>[
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
