import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        QuickInvoice(),
      ],
    );
  }
}
