import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/features/data/models/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                radius: 40,
                backgroundColor:
                    isSelected == true ? Colors.blue[300] : Colors.grey[200],
                child: SvgPicture.asset(
                  itemModel.image,
                  colorFilter: ColorFilter.mode(
                    isSelected == true ? Colors.white : Colors.blue,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14159265,
          child: Icon(
            Icons.arrow_back_ios,
            color: isSelected == true ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
