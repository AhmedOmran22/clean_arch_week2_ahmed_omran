
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';

class AnimeDescriptionWidget extends StatelessWidget {
  const AnimeDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2c1d50),
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AppAssets.imagesFire),
            const Expanded(
              child: Text(
                "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
