import 'package:clean_arch_week2_ahmed_omran/core/utils/app_assets.dart';

class AnimeModel {
  final String image;
  final String name;
  final String kind;
  final double rating;

  AnimeModel({
    required this.image,
    required this.name,
    required this.kind,
    required this.rating,
  });

  static final List<AnimeModel> dummyAnimeData = [
    AnimeModel(
      image: AppAssets.imagesConan,
      name: "Detective Conan",
      kind: "Mystery",
      rating: 5.0,
    ),
    AnimeModel(
      image: AppAssets.imagesHunterxhutner,
      name: "Hunter x Hunter",
      kind: "Action",
      rating: 10.0,
    ),
    AnimeModel(
      image: AppAssets.imagesConan,
      name: "Detective Conan",
      kind: "Mystery",
      rating: 5.0,
    ),
    AnimeModel(
      image: AppAssets.imagesHunterxhutner,
      name: "Hunter x Hunter",
      kind: "Action",
      rating: 10.0,
    ),
    AnimeModel(
      image: AppAssets.imagesConan,
      name: "Detective Conan",
      kind: "Mystery",
      rating: 5.0,
    ),
    AnimeModel(
      image: AppAssets.imagesHunterxhutner,
      name: "Hunter x Hunter",
      kind: "Action",
      rating: 10.0,
    ),
    AnimeModel(
      image: AppAssets.imagesConan,
      name: "Detective Conan",
      kind: "Mystery",
      rating: 5.0,
    ),
    AnimeModel(
      image: AppAssets.imagesHunterxhutner,
      name: "Hunter x Hunter",
      kind: "Action",
      rating: 10.0,
    ),
  ];
}
