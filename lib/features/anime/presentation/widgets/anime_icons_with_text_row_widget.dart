import 'package:clean_arch_week2_ahmed_omran/features/anime/presentation/widgets/icon_with_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class AnimeIconsWithTextRow extends StatelessWidget {
  const AnimeIconsWithTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        IconWithTextWidget(svgImage: AppAssets.imagesEye, text: "2.3M views"),
        IconWithTextWidget(svgImage: AppAssets.imagesHands, text: "2K clap"),
        IconWithTextWidget(
          svgImage: AppAssets.imagesOldPlay,
          text: "4 Seasons",
        ),
      ],
    );
  }
}
