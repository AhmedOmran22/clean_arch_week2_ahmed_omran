import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/top_character_model.dart';

class TopCharacterItemWidget extends StatelessWidget {
  const TopCharacterItemWidget({super.key, required this.topCharacterModel});
  final TopCharacterModel topCharacterModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 18.w,
            backgroundImage: AssetImage(topCharacterModel.image),
          ),
          const SizedBox(height: 16),
          Text(
            topCharacterModel.name,
            style: AppStyles.style16Regular.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            topCharacterModel.anime,
            style: AppStyles.style14Regular.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
