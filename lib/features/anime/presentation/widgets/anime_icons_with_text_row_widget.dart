
import 'package:clean_arch_week2_ahmed_omran/features/anime/presentation/widgets/icon_with_text_widget.dart';
import 'package:flutter/material.dart';

class AnimeIconsWithTextRow extends StatelessWidget {
  const AnimeIconsWithTextRow({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        IconWithTextWidget(),
        IconWithTextWidget(),
        IconWithTextWidget(),
      ],
    );
  }
}
