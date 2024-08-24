import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding:  EdgeInsets.only(top: 24.0),
            child: MobileLayout(),
          ),
        ),
      ],
    );
  }
}
