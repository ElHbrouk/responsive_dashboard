import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/income_section.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/my_card_and_transaction_history_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionHistorySection(),
          IncomeSection(),
        ],
      ),
    );
  }
}
