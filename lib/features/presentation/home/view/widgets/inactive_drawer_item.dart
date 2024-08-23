import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(drawerItemModel.itemName)),
      titleTextStyle: AppStyles.styleMedium16(context),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}
