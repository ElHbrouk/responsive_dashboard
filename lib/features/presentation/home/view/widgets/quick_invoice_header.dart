import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey[100],
            padding: const EdgeInsets.all(10.0),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}
