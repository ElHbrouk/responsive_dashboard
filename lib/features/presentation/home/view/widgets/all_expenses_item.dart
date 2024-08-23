import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/not_selected_item.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/selected_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 200),
      crossFadeState: isSelected == true
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      firstChild: SelectedItem(
        itemModel: itemModel,
      ),
      secondChild: NotSelectedItem(
        itemModel: itemModel,
      ),
    );
  }
}
