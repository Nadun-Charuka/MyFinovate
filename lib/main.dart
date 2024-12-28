import 'package:fitness_tracker_v90/provider/theme_notifier.dart';
import 'package:fitness_tracker_v90/screens/home_page.dart';
import 'package:fitness_tracker_v90/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Replace with your home page

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'MyFinovate',
      debugShowCheckedModeBanner: false,
      theme: lightTheme, // Light theme
      darkTheme: darkTheme, // Dark theme
      themeMode: themeNotifier.currentThemeMode, // Dynamically set theme
      home: const HomePage(), // Replace with your home widget
    );
  }
}
