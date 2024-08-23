import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_dots_indicator.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20.0,
        ),
        MyCardPageView(
          controller: controller,
        ),
        const SizedBox(
          height: 19.0,
        ),
        CustomDotsIndicator(controller: controller),
      ],
    );
  }
}
