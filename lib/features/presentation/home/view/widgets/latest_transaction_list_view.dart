import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/images.dart';
import 'package:responsive_dashboard/features/data/models/user_info_model.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<UserInfoModel> users = const [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Jane Doe',
      subTitle: 'JaneDoe@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Jane Doe',
      subTitle: 'JaneDoe@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Jane Doe',
      subTitle: 'JaneDoe@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: users
              .map(
                (e) => IntrinsicWidth(
                  child: UsreInfoListTile(
                    userInfoModel: e,
                  ),
                ),
              )
              .toList()),
    );
  }
}
