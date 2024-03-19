import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(child: AllExpenses()),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
        Expanded(flex: 2, child: SizedBox()),
      ],
    );
  }
}
