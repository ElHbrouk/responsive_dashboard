import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/income_section.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/my_card_and_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 24.0),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 24.0),
                        child: Column(
                          children: [
                            MyCardAndTransactionHistorySection(),
                            IncomeSection(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
