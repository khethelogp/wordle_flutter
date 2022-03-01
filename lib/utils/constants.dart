import 'package:flutter/cupertino.dart';

Color kBlack = const Color(0x121214);
Color kDarkgrey = const Color(0x3A3A3D);
Color kGrey = const Color(0x818384);
Color kLightgrey = const Color(0xD7DADC);
Color kPrimary = const Color(0x538D4E);
Color secondary = const Color(0xB59F3B); 

class CustomColors {
  String colorName;
  Color colorValue;

  CustomColors({
    required this.colorName,
    required this.colorValue
  });
}

const ENTER = "ENTER";
const CLEAR = "CLEAR";

const kKeys = [
  ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
  ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
  [ENTER, "z", "x", "c", "v", "b", "n", "m", CLEAR],
];

/* Map<Color, String> colorsToEmoji = [
  kDarkgrey: "⬛",
  kPrimary: "🟩",
  kSecondary: "🟧"
]; */