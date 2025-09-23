
import 'package:flutter/material.dart';

import '../../data/models/upgrade_plan_model.dart';
import 'upgrade_plan_item_widget.dart';

class UpgradePlanItemListViewBuilder extends StatefulWidget {
  const UpgradePlanItemListViewBuilder({super.key});

  @override
  State<UpgradePlanItemListViewBuilder> createState() =>
      _UpgradePlanItemListViewBuilderState();
}

class _UpgradePlanItemListViewBuilderState
    extends State<UpgradePlanItemListViewBuilder> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: UpgradePlanModel.upgradePlanDummyList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: UpgradePlanItemWidget(
            isSelected: index == selectedIndex,
            upgradePlanModel: UpgradePlanModel.upgradePlanDummyList[index],
          ),
        );
      },
    );
  }
}
