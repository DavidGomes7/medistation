import 'package:flutter/material.dart';

import 'routes/medi_pages.dart';
import 'theme/theme.dart';

class MediApp extends StatelessWidget {
  const MediApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MediPages.router,
      theme: MediThemeData.mediTheme,
    );
  }
}
