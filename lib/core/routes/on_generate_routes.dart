import 'package:flutter/material.dart';

import '../../features/anime/presentation/views/anime_details_view.dart';
import '../../features/home/presentation/views/bottom_nav_bar_view.dart';
import 'app_routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.bottomNavBar:
      return MaterialPageRoute(builder: (_) => const BottomNavBarView());
    case AppRoutes.animeDetails:
      return MaterialPageRoute(builder: (_) => const AnimeDetailsView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text("No route defined for ${settings.name}")),
        ),
      );
  }
}
