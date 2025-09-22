import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/models/top_character_model.dart';
import 'top_charcter_item_widget.dart';

class TopCharactersListViewBuilder extends StatelessWidget {
  const TopCharactersListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: TopCharacterModel.dummyTopCharactersList.length,
        itemBuilder: (context, index) {
          return TopCharacterItemWidget(
            topCharacterModel: TopCharacterModel.dummyTopCharactersList[index],
          );
        },
      ),
    );
  }
}
