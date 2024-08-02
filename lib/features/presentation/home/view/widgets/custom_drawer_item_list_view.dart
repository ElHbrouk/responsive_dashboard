import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/data/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/images.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_drawer_item.dart';

class CustomDrawerItemListView extends StatefulWidget {
  const CustomDrawerItemListView({super.key});

  @override
  State<CustomDrawerItemListView> createState() =>
      _CustomDrawerItemListViewState();
}

class _CustomDrawerItemListViewState extends State<CustomDrawerItemListView> {
  List<DrawerItemModel> items = const [
    DrawerItemModel(itemName: 'DashBoard', image: Assets.imagesDashBoard),
    DrawerItemModel(
        itemName: 'My Transaction', image: Assets.imagesMyTransaction),
    DrawerItemModel(itemName: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(itemName: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItemModel(
        itemName: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      // physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: CustomDrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
