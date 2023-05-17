import 'package:flutter/material.dart';
import 'package:potential_octo_engine_app/core/constants/constant_colors.dart';

abstract class AppThemeData {
  static ThemeData get themeData => ThemeData(
        appBarTheme: const AppBarTheme(
            titleTextStyle: _styleH1,
            elevation: 0,
            iconTheme: IconThemeData(color: secondaryColor)),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          circularTrackColor: primaryColor,
          color: Colors.white,
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          textStyle:
              MaterialStateProperty.resolveWith((states) => _styleH1.copyWith(
                    color: Colors.white,
                  )),
          shape: MaterialStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
          shadowColor: MaterialStateProperty.resolveWith(
              (states) => primaryColor.withOpacity(.16)),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => primaryColor),
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) return 0;
            return 1;
          }),
        )),
        scaffoldBackgroundColor: background,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: background,
            onPrimary: background,
            secondary: secondaryColor,
            onSecondary: secondaryColor,
            error: Colors.red,
            onError: Colors.redAccent,
            background: background,
            onBackground: background,
            surface: Colors.white,
            onSurface: Colors.white),
        textTheme: const TextTheme(
          bodySmall: _styleC1,
          displayLarge: _styleH1,
          headlineMedium: _styleH4,
          displaySmall: _styleH3,
        ),
      );
}

const TextStyle _styleH1 = TextStyle(
  fontFamily: 'Raleway',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w800,
  fontSize: 20,
  height: 24 / 20,
  color: secondaryColor,
);
const TextStyle _styleH4 = TextStyle(
  fontFamily: 'Raleway',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w800,
  fontSize: 14,
  height: 16.8 / 14,
  color: secondaryColor,
);
const TextStyle _styleH3 = TextStyle(
  fontFamily: 'Raleway',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w800,
  fontSize: 16,
  height: 19.2 / 16,
  color: secondaryColor,
);
const TextStyle _styleC1 = TextStyle(
  fontFamily: 'Raleway',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
  fontSize: 12,
  height: 14.4 / 12,
  color: secondaryColor,
);
