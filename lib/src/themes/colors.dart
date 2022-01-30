import 'package:flutter/material.dart';

const MaterialColor appColor =
    MaterialColor(_appColorPrimaryValue, <int, Color>{
  50: Color(0xFFFCF3EB),
  100: Color(0xFFF9E2CE),
  200: Color(0xFFF5CFAD),
  300: Color(0xFFF0BC8C),
  400: Color(0xFFEDAD73),
  500: Color(_appColorPrimaryValue),
  600: Color(0xFFE79752),
  700: Color(0xFFE48D48),
  800: Color(0xFFE1833F),
  900: Color(0xFFDB722E),
});
const int _appColorPrimaryValue = 0xFFEA9F5A;

const MaterialColor darkblack =
    MaterialColor(_darkblackPrimaryValue, <int, Color>{
  50: Color(0xFFE3E3E4),
  100: Color(0xFFB9BABA),
  200: Color(0xFF8B8C8D),
  300: Color(0xFF5D5D5F),
  400: Color(0xFF3A3B3C),
  500: Color(_darkblackPrimaryValue),
  600: Color(0xFF141517),
  700: Color(0xFF111113),
  800: Color(0xFF0D0E0F),
  900: Color(0xFF070808),
});
const int _darkblackPrimaryValue = 0xFF17181A;

const MaterialColor darkblackAccent =
    MaterialColor(_darkblackAccentValue, <int, Color>{
  100: Color(0xFFFF5050),
  200: Color(_darkblackAccentValue),
  400: Color(0xFFE90000),
  700: Color(0xFFCF0000),
});
const int _darkblackAccentValue = 0xFFFF1D1D;
