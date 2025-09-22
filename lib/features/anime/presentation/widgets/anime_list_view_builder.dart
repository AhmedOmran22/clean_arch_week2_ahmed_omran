import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/models/anime_model.dart';
import 'anime_item_widget.dart';

class AnimeListViewBuilder extends StatelessWidget {
  const AnimeListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 95.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AnimeModel.dummyAnimeData.length,
        itemBuilder: (context, index) {
          return AnimeItemWidget(animeModel: AnimeModel.dummyAnimeData[index]);
        },
      ),
    );
  }
}
