import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 30, child: SvgPicture.asset(image)),
        const Spacer(),
        Transform.rotate(
          angle: 3.14159265,
          child: const Icon(Icons.arrow_back_ios),
        ),
      ],
    );
  }
}
