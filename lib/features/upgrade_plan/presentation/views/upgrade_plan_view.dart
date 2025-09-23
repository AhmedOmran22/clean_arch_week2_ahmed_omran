import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/upgrade_plan_model.dart';
import '../widgets/upgrade_plan_item_widget.dart';

class UpgradePlanView extends StatelessWidget {
  const UpgradePlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 22.h,
              right: 0,
              child: SvgPicture.asset(
                AppAssets.imagesRightStar,
                alignment: Alignment.topRight,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                AppAssets.imagesLeftStar,
                alignment: Alignment.topLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 8.h),
                  Text("Upgrade Plan", style: AppStyles.style22Bold),
                  const SizedBox(height: 12),
                  Image.asset(AppAssets.imagesUpgradePlan),
                  Text(
                    textAlign: TextAlign.center,
                    "Seamless Anime \n Experience, Ad-Free.",
                    style: AppStyles.style24Bold,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    textAlign: TextAlign.center,
                    "Enjoy unlimited anime streaming without interruptions.",
                    style: AppStyles.style14Regular.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const UpgradePlanItemListViewBuilder(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
