import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer name',
                titleText: 'Customer Name',
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer email',
                titleText: 'Customer Email',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type item name',
                titleText: 'Item Name',
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TitleTextField(
                hintText: 'USD',
                titleText: 'Item mount',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(20.0),
                color: Colors.white,
                onPressed: () {},
                elevation: 0.0,
                child: Text(
                  'Add more details',
                  style: AppStyles.styleSemiBold18(context).copyWith(
                    color: const Color(0xff4eb7f2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(20.0),
                color: const Color(0xff4eb7f2),
                onPressed: () {},
                child: Text(
                  'Send Money',
                  style: AppStyles.styleSemiBold18(context),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
