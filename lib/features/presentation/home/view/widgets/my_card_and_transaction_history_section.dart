import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/my_card_section.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
