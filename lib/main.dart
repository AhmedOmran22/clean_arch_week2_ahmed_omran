import 'package:clean_arch_week2_ahmed_omran/anime_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await preventDeviceOriantation();
  runApp(const AnimeApp());
}

preventDeviceOriantation() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
