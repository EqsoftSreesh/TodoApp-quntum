import 'package:flutter/material.dart';

class AppColors {
  // ---------- MAIN APP GRADIENT COLORS ----------
  static const Color gradientDarkBlue = Color(0xFF0F2A45);
  static const Color gradientMidBlue = Color(0xFF184C81);
  static const Color gradientLightBlue = Color(0xFF1D76D1);

  static const List<Color> appGradient = [
    gradientDarkBlue,
    gradientMidBlue,
    gradientLightBlue,
  ];

  // ---------- CARD COLORS ----------
  static const Color cardBackground = Colors.white;
  static const Color cardShadow = Color(0x22000000); // Soft shadow

  // ---------- PRIORITY COLORS (SOFT PREMIUM TONES) ----------
  static const Color highPriority = Color(0xFFFF6B6B);   // Soft Red
  static const Color mediumPriority = Color(0xFFFFC260); // Soft Orange
  static const Color lowPriority = Color(0xFF4CD964);    // Soft Green

  // Soft badge background
  static Color priorityBackground(Color color) {
    return color.withOpacity(0.18);
  }

  // Detect priority color
  static Color getPriorityColor(int priority) {
    switch (priority) {
      case 3:
        return highPriority;
      case 2:
        return mediumPriority;
      default:
        return lowPriority;
    }
  }
}
