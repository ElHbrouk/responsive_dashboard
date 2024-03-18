import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UsreInfoListTile extends StatelessWidget {
  const UsreInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title),
        subtitle: Text(subTitle),
        titleTextStyle: AppStyles.styleSemiBold16,
        subtitleTextStyle: AppStyles.styleRegular12,
      ),
    );
  }
}
