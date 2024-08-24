import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/trasnaction_item_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            TextButton(
              style: TextButton.styleFrom(
                
                padding: EdgeInsets.zero,
              ),
              child: Text(
                'See All',
                style: AppStyles.styleMedium16(context).copyWith(
                  color: const Color(0xff4eb7f2),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
        const TrasnactionItemListView(),
      ],
    );
  }
}
