import 'package:flutter/material.dart';

import 'medi_colors.dart';

class MediThemeData {
  MediThemeData._();

  static final ThemeData mediTheme = _MediTheme.mediTheme;
}

class _MediTheme {
  static ThemeData get mediTheme => ThemeData(
        scaffoldBackgroundColor: MediColors.background,
        appBarTheme: const AppBarTheme(
          color: MediColors.background,
        ),
        drawerTheme: const DrawerThemeData(backgroundColor: MediColors.background),
      );
}
