import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/widgets/custom_theme_extension.dart';
import 'package:flutter/material.dart';

// Light Theme
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: lightPrimaryColor,
  scaffoldBackgroundColor: lightBgColor,
  cardColor: lightCardBgColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black), // Replaces bodyText1
    bodyMedium: TextStyle(color: Colors.black), // Replaces bodyText2
    headlineSmall: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.black), // Replaces headline6
  ),
  appBarTheme: AppBarTheme(
    color: lightPrimaryColor,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightPrimaryColor, // Replaces primary
      foregroundColor: lightSecondaryColor, // Replaces onPrimary
    ),
  ),
  extensions: const [
    CustomColors(
      cardBackground: sharedCardBackground,
      blue: sharedBlue,
      white: sharedWhite,
      darkBackground: sharedDarkBackground,
      purpleAccent: sharedPurpleAccent,
      limeGreen: sharedLimeGreen,
      neutralGrey: sharedNeutralGrey,
      lightBlue: sharedLightBlue,
      brightGreen: sharedBrightGreen,
      brightOrange: Color.fromARGB(255, 252, 149, 58),
      skyBlue: sharedSkyBlue,
      brightPurple: sharedBrightPurple,
      aquaGreen: sharedAquaGreen,
      yellowGreen: sharedYellowGreen,
    ),
  ],
);

// Dark Theme
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: darkPrimaryColor,
  scaffoldBackgroundColor: darkBgColor,
  cardColor: darkCardBgColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white), // Replaces bodyText1
    bodyMedium: TextStyle(color: Colors.white), // Replaces bodyText2
    headlineSmall: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white), // Replaces headline6
  ),
  appBarTheme: AppBarTheme(
    color: darkPrimaryColor,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkPrimaryColor, // Replaces primary
      foregroundColor: darkSecondaryColor, // Replaces onPrimary
    ),
  ),
  extensions: const [
    CustomColors(
      cardBackground: sharedCardBackground,
      blue: sharedBlue,
      white: sharedWhite,
      darkBackground: sharedDarkBackground,
      purpleAccent: sharedPurpleAccent,
      limeGreen: sharedLimeGreen,
      neutralGrey: sharedNeutralGrey,
      lightBlue: sharedLightBlue,
      brightGreen: sharedBrightGreen,
      skyBlue: sharedSkyBlue,
      brightPurple: sharedBrightPurple,
      aquaGreen: sharedAquaGreen,
      yellowGreen: sharedYellowGreen,
    ),
  ],
);
