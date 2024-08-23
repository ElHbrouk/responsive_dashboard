import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/quick_invoice_form.dart';

class LatestTransactionsSection extends StatelessWidget {
  const LatestTransactionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: AppStyles.styleMedium16(context),
        ),
        const LatestTransactionListView(),
        const Divider(
          height: 48,
        ),
        const QuickInvoiceForm(),
      ],
    );
  }
}
