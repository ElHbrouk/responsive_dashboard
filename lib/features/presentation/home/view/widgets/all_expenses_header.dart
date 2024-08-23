import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/range_options.dart';

class OptionRangeHeader extends StatelessWidget {
  const OptionRangeHeader({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
