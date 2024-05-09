import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._(); //mean private
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(
          color: const Color.fromARGB(255, 226, 58, 58)));
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge:
          GoogleFonts.montserrat(color: const Color.fromARGB(255, 228, 223, 223)));
}
