import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  //light theme colors
  static const Color primaryColor = Color(0xFF00BCD4);
  static const Color secondaryColor = Color(0xFF607D8B);
  static const Color accentColor = Color(0xFF607D8B);
  static const Color errorColor = Color(0xFFB00020);
  static const Color dividerColor = Color(0xFFBDBDBD);
  static const Color backgroundColor = Color(0xFFECEFF1);
  static const Color textColor = Color(0xFF212121);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);
  static const Color onSecondaryColor = Color(0xFFFFFFFF);
  static const Color onSurfaceColor = Color(0xFFFFFFFF);
  static const Color onBackgroundColor = Color(0xFF212121);
  static const Color onErrorColor = Color(0xFF212121);
  static const Color iconColor = Color(0xFFFFFFFF);
  static const Color snakBarBackgroundColor = Color(0x00000000);

  //dark theme colors
  static const Color darkPrimaryColor = Color(0xFFFFFFFF);
  static const Color darkSecondaryColor = Color(0xFFB0BEC5);
  static const Color darkAccentColor = Color(0xFFB0BEC5);
  static const Color darkErrorColor = Color(0xFFCF6679);
  static const Color darkDividerColor = Color(0xFF757575);
  static const Color darkBackgroundColor = Color(0xFF212121);
  static const Color darkTextColor = Color(0xFFFFFFFF);
  static const Color dartOnPrimaryColor = Color(0xFFFFFFFF);
  static const Color darkOnSecondaryColor = Color(0xFFFFFFFF);
  static const Color darkOnSurfaceColor = Color(0xFFFFFFFF);
  static const Color darkOnBackgroundColor = Color(0xFF212121);
  static const Color darkOnErrorColor = Color(0xFF212121);
  static const Color darkIconColor = Color(0xFFFFFFFF);

  //light theme data
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.notoSans(
        color: textColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      color: primaryColor,
      iconTheme: const IconThemeData(
        color: iconColor,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onSurface: onSurfaceColor,
      onBackground: onBackgroundColor,
      onError: onErrorColor,
      surface: primaryColor,
      background: primaryColor,
      error: errorColor,
    ),
    iconTheme: const IconThemeData(
      color: iconColor,
    ),
    textTheme: lightTextTheme,
  );

  //dark theme data
  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.notoSans(
        color: darkTextColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      color: darkPrimaryColor,
      iconTheme: const IconThemeData(
        color: darkIconColor,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: darkPrimaryColor,
      secondary: darkSecondaryColor,
      onPrimary: dartOnPrimaryColor,
      onSecondary: darkOnSecondaryColor,
      onSurface: darkOnSurfaceColor,
      onBackground: darkOnBackgroundColor,
      onError: darkOnErrorColor,
      surface: darkPrimaryColor,
      background: darkPrimaryColor,
      error: darkErrorColor,
    ),
    iconTheme: const IconThemeData(
      color: darkIconColor,
    ),
    textTheme: darkTextTheme,
  );

  //light text theme
  static final TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.notoSans(
      color: textColor,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );

  //dark Text Theme
  static final TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.notoSans(
      color: darkTextColor,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );
}
