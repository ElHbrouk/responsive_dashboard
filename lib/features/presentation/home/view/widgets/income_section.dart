import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          OptionRangeHeader(
            title: 'Income',
          ),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
