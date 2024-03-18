import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drawerItemModel.itemName),
      titleTextStyle: AppStyles.styleBold16,
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: Container(
        width: 4,
        color: const Color(0xff4eb7f2),
      ),
    );
  }
}
