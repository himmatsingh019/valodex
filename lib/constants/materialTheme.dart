import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getMaterialTheme(context) {
  return ThemeData(
    textTheme:
        GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
      headline6: GoogleFonts.poppins(),
    ),
    appBarTheme: AppBarTheme(
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
    ),
  );
}
