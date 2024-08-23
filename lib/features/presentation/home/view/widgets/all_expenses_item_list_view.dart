import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/images.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({
    super.key,
  });

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2024',
      price: r'$ 20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2024',
      price: r'$ 20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2024',
      price: r'$ 20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              update(0);
            },
            child: AllExpensesItem(
              isSelected: 0 == selectedIndex,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              update(1);
            },
            child: AllExpensesItem(
              isSelected: 1 == selectedIndex,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              update(2);
            },
            child: AllExpensesItem(
              isSelected: 2 == selectedIndex,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
  }

  void update(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
