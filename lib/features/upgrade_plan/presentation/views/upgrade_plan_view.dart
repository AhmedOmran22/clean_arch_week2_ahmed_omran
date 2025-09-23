import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';
import '../widgets/upgrade_plan_list_view_builder.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 40),
                      Text("Upgrade Plan", style: AppStyles.style22Bold),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
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
