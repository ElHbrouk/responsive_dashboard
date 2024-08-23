import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
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
        child: Text(drawerItemModel.itemName),
      ),
      titleTextStyle: AppStyles.styleBold16(context),
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: Container(
        width: 4,
        color: const Color(0xff4eb7f2),
      ),
    );
  }
}
