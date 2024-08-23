import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/data/models/details_item_model.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required this.detailsItemModel});
  final DetailsItemModel detailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsetsDirectional.only(start: 12),
      title: Text(
        detailsItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: detailsItemModel.color,
        ),
      ),
      trailing: Text(
        detailsItemModel.percentage,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
