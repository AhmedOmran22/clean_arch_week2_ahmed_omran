import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/on_generate_routes.dart';
import 'core/theme/app_theme.dart';

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute: AppRoutes.bottomNavBar,
          theme: appTheme,
        );
      },
    );
  }
}
