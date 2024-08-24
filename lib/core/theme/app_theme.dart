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
      colorScheme: const ColorScheme.dark().copyWith()
    );
  }
}
