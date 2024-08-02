import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
