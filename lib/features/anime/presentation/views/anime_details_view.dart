import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/widgets/custom_divider.dart';
import '../widgets/anime_description_widget.dart';
import '../widgets/anime_icons_with_text_row_widget.dart';
import '../widgets/anime_image_and_logo_widget.dart';
import '../widgets/anime_lablels_row_widget.dart';
import '../widgets/custom_bottom_navigation_barr_buttons_widget.dart';

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
      bottomNavigationBar: const CustomBottomNavigationBarButtonsWidget(),
    );
  }
}
