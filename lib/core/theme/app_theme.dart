import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Dark Mode
  static const Color _scaffoldColorDark = Color.fromARGB(255, 26, 31, 37);
  static const Color _primaryColorDark = Color.fromARGB(255, 38, 45, 53);
  static const Color _secondaryColorDark = Color.fromARGB(255, 255, 210, 42);

  static ThemeData dark() {
    return ThemeData().copyWith(
      scaffoldBackgroundColor: _scaffoldColorDark,
      primaryColorDark: _primaryColorDark,
      primaryColor: _primaryColorDark,
      primaryColorLight: _primaryColorDark,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: _primaryColorDark,
        secondary: _secondaryColorDark,
      ),
      // Allow developers flexibility in text theme colors and font weights to suit specific UI details.
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 30.sp,
            fontWeight: FontWeight.w500,
            color: _secondaryColorDark),
        titleMedium: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600),
        titleSmall: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(fontSize: 14.sp),
        bodyMedium: TextStyle(fontSize: 12.sp),
        bodySmall: TextStyle(fontSize: 10.sp),
      ),
    );
  }
}
