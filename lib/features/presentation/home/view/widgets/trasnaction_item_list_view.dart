import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/transaction_model.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/trasnaction_item.dart';

class TrasnactionItemListView extends StatelessWidget {
  const TrasnactionItemListView({
    super.key,
  });
  final List<TransactionModel> items = const [
    TransactionModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 at 1:30 PM',
      price: r'$20,129',
    ),
    TransactionModel(
      isWithdrawal: false,
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      price: r'$2,000',
    ),
    TransactionModel(
      isWithdrawal: false,
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 5:30 PM',
      price: r'$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map(
        (e) {
          return Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: TrasnactionItem(
              transactionModel: e,
            ),
          );
        },
      ).toList(),
    );
  }
}
