import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/features/presentation/home/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.grey[100],
              elevation: 0.0,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                  ),
                );
              }),
            )
          : null,
      drawer: SizedBox(
        width: width * 0.6,
        child: const CustomDrawer(),
      ),
      backgroundColor: const Color(0xfff8f9fc),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
