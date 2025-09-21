import 'package:flutter/material.dart';

import '../../features/home/presentation/views/bottom_nav_bar_view.dart';
import 'app_routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.bottomNavBar:
      return MaterialPageRoute(builder: (_) => const BottomNavBarView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text("No route defined for ${settings.name}")),
        ),
      );
  }
}
