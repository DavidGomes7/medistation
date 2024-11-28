import 'package:flutter/material.dart';

import 'routes/medi_pages.dart';

class MediApp extends StatelessWidget {
  const MediApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: MediPages.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
