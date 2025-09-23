import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_action_button_widget.dart';
import '../../../../core/widgets/custom_divider.dart';
import '../widgets/anime_description_widget.dart';
import '../widgets/anime_icons_with_text_row_widget.dart';
import '../widgets/anime_image_and_logo_widget.dart';
import '../widgets/anime_lablels_row_widget.dart';

class AnimeDetailsView extends StatelessWidget {
  const AnimeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c1d50),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const AnimeImageAndLogoWidget(),
            SizedBox(height: 8.h),
            const AnimeLabelsRowWidget(),
            const SizedBox(height: 16),
            const CustomDivider(),
            const SizedBox(height: 8),
            const AnimeIconsWithTextRow(),
            const SizedBox(height: 8),
            const CustomDivider(),
            const SizedBox(height: 12),
            const AnimeDescriptionWidget(),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 16),
        alignment: Alignment.topCenter,
        height: 10.h,
        color: const Color(0xff16103c),
        child: const Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomActionButtonWidget(
              label: "Preview",
              svgImage: AppAssets.imagesPerview,
              color: Color(0xff554a71),
            ),
            CustomActionButtonWidget(
              label: "Watch Now",
              svgImage: AppAssets.imagesEye,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
