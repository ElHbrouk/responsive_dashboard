import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/details_item_model.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    DetailsItemModel(
      title: 'Design Service',
      percentage: '40%',
      color: Color(0xff208bc7),
    ),
    DetailsItemModel(
      title: 'Design Product',
      percentage: '25%',
      color: Color(0xff4db7f2),
    ),
    DetailsItemModel(
      title: 'Product royalty',
      percentage: '20%',
      color: Color(0xff064060),
    ),
    DetailsItemModel(
      title: 'Other',
      percentage: '22%',
      color: Color(0xffe2decd),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => DetailsItem(
              detailsItemModel: e,
            ),
          )
          .toList(),
    );
  }
}
