import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static lightTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
              color: Colors.black
          )
      ),
      textTheme: Theme.of(context).textTheme
  );
  static darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
  );
}