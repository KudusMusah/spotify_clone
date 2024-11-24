import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/themes/theme.dart';
import 'package:spotify_clone/features/onboarding/screens/landing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;

  runApp(
    ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify clone',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: const LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
