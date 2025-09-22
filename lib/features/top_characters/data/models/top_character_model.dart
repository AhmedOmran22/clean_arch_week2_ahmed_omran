import '../../../../core/utils/app_assets.dart';

class TopCharacterModel {
  final String name;
  final String image;
  final String anime;

  TopCharacterModel({
    required this.name,
    required this.image,
    required this.anime,
  });

  static final List<TopCharacterModel> dummyTopCharactersList = [
    TopCharacterModel(
      name: "Gon Freecsse",
      image: AppAssets.imagesGon,
      anime: "Hunter x Hunter",
    ),
    TopCharacterModel(
      name: "Naruto Uzumaki",
      image: AppAssets.imagesNaruto,
      anime: "Naruto",
    ),
    TopCharacterModel(
      name: "Gon Freecsse",
      image: AppAssets.imagesGon,
      anime: "Hunter x Hunter",
    ),
    TopCharacterModel(
      name: "Naruto Uzumaki",
      image: AppAssets.imagesNaruto,
      anime: "Naruto",
    ),
    TopCharacterModel(
      name: "Gon Freecsse",
      image: AppAssets.imagesGon,
      anime: "Hunter x Hunter",
    ),
    TopCharacterModel(
      name: "Naruto Uzumaki",
      image: AppAssets.imagesNaruto,
      anime: "Naruto",
    ),
    TopCharacterModel(
      name: "Gon Freecsse",
      image: AppAssets.imagesGon,
      anime: "Hunter x Hunter",
    ),
    TopCharacterModel(
      name: "Naruto Uzumaki",
      image: AppAssets.imagesNaruto,
      anime: "Naruto",
    ),
  ];
}
