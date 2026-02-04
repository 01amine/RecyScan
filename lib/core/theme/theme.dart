import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Primary Colors - PickUpPal Brand Colors
  static const Color primaryColor = Color(
    0xFF5FAD7F,
  ); // PickUpPal main green from the app
  static const Color secondaryColor = Color(0xFF4A9B6E); // Darker green shade
  static const Color accentColor = Color(0xFF2C5F4F); // Deep green accent

  // Background Colors
  static const Color backgroundColor = Color(
    0xFFF5F7F6,
  ); // Very light gray-green background
  static const Color surfaceColor = Color(0xFFFFFFFF); // Pure white surfaces
  static const Color cardColor = Color(0xFFFFFFFF); // White cards

  // Text Colors - Clean and readable
  static const Color primaryTextColor = Color(
    0xFF2D3E3C,
  ); // Dark green-gray text
  static const Color secondaryTextColor = Color(
    0xFF5A6866,
  ); // Medium gray-green
  static const Color hintTextColor = Color(
    0xFF9AAFA8,
  ); // Light green-gray hints

  // Interactive Colors
  static const Color buttonColor = Color(
    0xFF5FAD7F,
  ); // Primary green for buttons
  static const Color selectedColor = Color(
    0xFFE8F3ED,
  ); // Very light green selection
  static const Color borderColor = Color(
    0xFFD4E3DC,
  ); // Subtle green-tinted borders

  // Status Colors - Eco-friendly theme
  static const Color successColor = Color(0xFF5FAD7F); // Green success
  static const Color errorColor = Color(0xFFD94545); // Red error
  static const Color warningColor = Color(0xFFF59E42); // Orange warning
  static const Color infoColor = Color(0xFF4A9B6E); // Green info

  // Feature-specific Colors
  static const Color recycleColor = Color(0xFF5FAD7F); // Recycle green
  static const Color trashColor = Color(0xFF4A9B6E); // Trash darker green
  static const Color highlightColor = Color(
    0xFFB8E6C9,
  ); // Light green highlight
  static const Color iconBackgroundColor = Color(
    0xFFE8F3ED,
  ); // Light green for icon backgrounds

  // Social Colors
  static const Color googleColor = Color(0xFF4285F4);
  static const Color facebookColor = Color(0xFF1877F2);

  // Transparent Colors
  static const Color overlayColor = Color(0x80000000);
  static const Color shimmerColor = Color(0xFFE8F3ED);

  // Theme Data
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: cardColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        error: errorColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: primaryTextColor,
        onError: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),
      textTheme: TextTheme(
        // Display styles - For major headings
        displayLarge: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        displayMedium: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        displaySmall: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),

        // Headline styles - For section headings
        headlineLarge: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
        headlineMedium: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
        headlineSmall: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),

        // Title styles - For UI elements
        titleLarge: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        titleMedium: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        titleSmall: GoogleFonts.poppins(
          color: secondaryTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),

        // Body styles - For content
        bodyLarge: GoogleFonts.inter(
          color: primaryTextColor,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          height: 1.5,
        ),
        bodyMedium: GoogleFonts.inter(
          color: primaryTextColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          height: 1.5,
        ),
        bodySmall: GoogleFonts.inter(
          color: secondaryTextColor,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          height: 1.4,
        ),

        // Label styles - For buttons and small UI elements
        labelLarge: GoogleFonts.poppins(
          color: primaryTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        labelMedium: GoogleFonts.poppins(
          color: secondaryTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
        labelSmall: GoogleFonts.poppins(
          color: hintTextColor,
          fontSize: 10,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      cardTheme: CardThemeData(
        color: cardColor,
        elevation: 2,
        shadowColor: primaryColor.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: hintTextColor,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
    );
  }

  // Dark theme variant for eco-conscious evening use
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: const Color(0xFF1A2522),
      cardColor: const Color(0xFF243330),
      colorScheme: ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: const Color(0xFF243330),
        error: errorColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onError: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF243330),
        foregroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        displayMedium: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        displaySmall: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
        headlineLarge: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
        headlineMedium: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
        headlineSmall: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        titleLarge: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        titleMedium: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        titleSmall: GoogleFonts.poppins(
          color: const Color(0xFFB0C4BC),
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        bodyLarge: GoogleFonts.inter(
          color: const Color(0xFFE0E8E4),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          height: 1.5,
        ),
        bodyMedium: GoogleFonts.inter(
          color: const Color(0xFFE0E8E4),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          height: 1.5,
        ),
        bodySmall: GoogleFonts.inter(
          color: const Color(0xFFB0C4BC),
          fontSize: 12,
          fontWeight: FontWeight.normal,
          height: 1.4,
        ),
        labelLarge: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        labelMedium: GoogleFonts.poppins(
          color: const Color(0xFFB0C4BC),
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
        labelSmall: GoogleFonts.poppins(
          color: const Color(0xFF6B7F78),
          fontSize: 10,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: const Color(0xFF243330),
        selectedItemColor: primaryColor,
        unselectedItemColor: const Color(0xFF6B7F78),
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
