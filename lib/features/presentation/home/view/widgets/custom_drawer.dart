import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/images.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_drawer_item_list_view.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/inactive_drawer_item.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UsreInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          CustomDrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 60,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    itemName: 'Setting system',
                    image: Assets.imagesSetting,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    itemName: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
