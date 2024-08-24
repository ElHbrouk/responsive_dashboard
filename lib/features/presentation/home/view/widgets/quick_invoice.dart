import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/latest_transactions_section.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransactionsSection(),
          
        ],
      ),
    );
  }
}
