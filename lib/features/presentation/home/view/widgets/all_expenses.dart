import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/core/utils/images.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          Expanded(
            child: AllExpensesItem(
              itemModel: AllExpensesItemModel(
                image: Assets.imagesIncome,
                title: 'Income',
                date: 'April 2024',
                price: r'$ 20,129',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
