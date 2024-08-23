import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_background_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          OptionRangeHeader(
            title: 'All Expenses',
          ),
          SizedBox(
            height: 16.0,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
