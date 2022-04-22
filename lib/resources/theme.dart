import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telegram_redesign/resources/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: grey900,
    colorScheme: const ColorScheme.dark(),
    primaryColorDark: white,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: white),
    appBarTheme: AppBarTheme(
      backgroundColor: grey900,
      foregroundColor: white,
    ),
    iconTheme: const IconThemeData(color: white),
    primaryColor: black,
    backgroundColor: grey900,
    primaryColorLight: grey900,
    textTheme: _customTextTheme(ThemeData.dark().textTheme, true),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(borderSide: BorderSide(color: white)),
      labelStyle: TextStyle(
        decorationColor: white,
      ),
    ),
  );

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: white,
      colorScheme: const ColorScheme.light(),
      primaryColorLight: grey900,
      primaryColor: white,
      iconTheme: const IconThemeData(color: black),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: black, foregroundColor: white),
      appBarTheme: const AppBarTheme(
          backgroundColor: white,
          foregroundColor: black //here you can give the text color
          ),
      primaryColorDark: black,
      backgroundColor: white,
      textTheme: _customTextTheme(ThemeData.light().textTheme, false),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(borderSide: BorderSide(color: black)),
        labelStyle: TextStyle(
          decorationColor: black,
        ),
      ));

  static final myTextTheme = TextTheme(
      headline1: TextStyle(fontSize: 36.sp, fontWeight: FontWeight.normal),
      headline2: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      headline3: TextStyle(
          fontSize: 15.sp, fontWeight: FontWeight.bold, color: grey900));

  static TextTheme _customTextTheme(TextTheme base, bool isDark) {
    return base
        .copyWith(
          headline1: base.headline1!
              .copyWith(fontSize: 36.sp, fontWeight: FontWeight.normal),
          headline2: base.headline6!
              .copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
          headline3: base.headline6!.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.normal,
              color: Colors.grey[350]),
        )
        .apply(
            fontFamily: GoogleFonts.nunito().fontFamily,
            bodyColor: isDark ? white : black,
            displayColor: isDark ? white : black);
  }
}
