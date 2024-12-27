import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color? cardBackground;
  final Color? blue;
  final Color? white;
  final Color? darkBackground;
  final Color? purpleAccent;
  final Color? limeGreen;
  final Color? neutralGrey;
  final Color? lightBlue;
  final Color? brightGreen;
  final Color? skyBlue;
  final Color? brightPurple;
  final Color? aquaGreen;
  final Color? yellowGreen;

  const CustomColors({
    this.cardBackground,
    this.blue,
    this.white,
    this.darkBackground,
    this.purpleAccent,
    this.limeGreen,
    this.neutralGrey,
    this.lightBlue,
    this.brightGreen,
    this.skyBlue,
    this.brightPurple,
    this.aquaGreen,
    this.yellowGreen,
  });

  @override
  CustomColors copyWith({
    Color? cardBackground,
    Color? blue,
    Color? white,
    Color? darkBackground,
    Color? purpleAccent,
    Color? limeGreen,
    Color? neutralGrey,
    Color? lightBlue,
    Color? brightGreen,
    Color? skyBlue,
    Color? brightPurple,
    Color? aquaGreen,
    Color? yellowGreen,
  }) {
    return CustomColors(
      cardBackground: cardBackground ?? this.cardBackground,
      blue: blue ?? this.blue,
      white: white ?? this.white,
      darkBackground: darkBackground ?? this.darkBackground,
      purpleAccent: purpleAccent ?? this.purpleAccent,
      limeGreen: limeGreen ?? this.limeGreen,
      neutralGrey: neutralGrey ?? this.neutralGrey,
      lightBlue: lightBlue ?? this.lightBlue,
      brightGreen: brightGreen ?? this.brightGreen,
      skyBlue: skyBlue ?? this.skyBlue,
      brightPurple: brightPurple ?? this.brightPurple,
      aquaGreen: aquaGreen ?? this.aquaGreen,
      yellowGreen: yellowGreen ?? this.yellowGreen,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;

    return CustomColors(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      blue: Color.lerp(blue, other.blue, t),
      white: Color.lerp(white, other.white, t),
      darkBackground: Color.lerp(darkBackground, other.darkBackground, t),
      purpleAccent: Color.lerp(purpleAccent, other.purpleAccent, t),
      limeGreen: Color.lerp(limeGreen, other.limeGreen, t),
      neutralGrey: Color.lerp(neutralGrey, other.neutralGrey, t),
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t),
      brightGreen: Color.lerp(brightGreen, other.brightGreen, t),
      skyBlue: Color.lerp(skyBlue, other.skyBlue, t),
      brightPurple: Color.lerp(brightPurple, other.brightPurple, t),
      aquaGreen: Color.lerp(aquaGreen, other.aquaGreen, t),
      yellowGreen: Color.lerp(yellowGreen, other.yellowGreen, t),
    );
  }
}
