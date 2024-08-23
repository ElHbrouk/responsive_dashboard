import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 425 / 240,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesCard,
            ),
          ),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4eb7f2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsetsDirectional.only(
                start: 20.0,
                top: 5.0,
                end: 30.0,
              ),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
