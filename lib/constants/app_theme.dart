import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  final ThemeData _themeData = ThemeDataCollection.baseTheme;

  ThemeData get themeData => _themeData;
}

class ThemeDataCollection {
  static final baseTheme = _getTheme(Colors.orange);

  static ThemeData _getTheme(MaterialColor color) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.blueGrey[50],
      primarySwatch: color,
      secondaryHeaderColor: color,
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.blueGrey[50],
      ),
      iconTheme: IconThemeData(
        color: Colors.teal[900],
      ),
      primaryColor: Colors.teal[900],
      fontFamily: GoogleFonts.nunito().fontFamily,
      backgroundColor: Colors.red.withOpacity(0.4),
      dividerColor: const Color(0xff757575),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.blueGrey[50],
        foregroundColor: color,
        elevation: 0,
      ),
      elevatedButtonTheme: elevateButtom(),
      textTheme: textTheme(),
    );
  }
}

// ELEVATED BUTTON STYLE
ElevatedButtonThemeData elevateButtom() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      minimumSize: const Size(double.infinity, 40),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}

// TEXT STYLE
TextTheme textTheme() {
  return TextTheme(
    displayLarge: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
      fontSize: 15,
      color: Colors.teal[900],
      fontWeight: FontWeight.w900,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.teal[900],
      fontWeight: FontWeight.w600,
    ),
    bodySmall: const TextStyle(
      fontSize: 12,
      color: Colors.grey,
      fontWeight: FontWeight.w400,
    ),
  );
}
