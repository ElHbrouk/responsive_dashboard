import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff8f9fc),
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
  