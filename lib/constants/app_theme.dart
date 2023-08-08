import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFF2b2d42);
const primaryLightColor = Color(0xFFedf2f4);
const secondaryColor = Color(0xFF8d99ae);

// LightTheme
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: primaryLightColor,
    primarySwatch: Colors.grey,
    secondaryHeaderColor: primaryColor,
    fontFamily: GoogleFonts.nunito().fontFamily,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    primaryColor: primaryColor,
    iconTheme: const IconThemeData(color: primaryColor),
    elevatedButtonTheme: elevateButtom(),
  );
}

// Text Theme
TextTheme textTheme() {
  return const TextTheme(
    // This Style for small Title **************
    bodyText1: TextStyle(
      fontSize: 13,
      color: primaryColor,
      fontWeight: FontWeight.w700,
    ),

    // This Style for larege Title **************
    headline1: TextStyle(
      color: primaryColor,
      fontSize: 28,
      fontWeight: FontWeight.w900,
    ),
  );
}

// ElevatedButton Theme
ElevatedButtonThemeData elevateButtom() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: secondaryColor,
      foregroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      minimumSize: const Size(double.infinity, 40),
      elevation: 0,
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(color: primaryColor, fontSize: 16),
    color: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: primaryColor),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
