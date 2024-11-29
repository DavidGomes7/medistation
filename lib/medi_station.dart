import 'package:flutter/material.dart';

import 'interfaces/intefaces.dart';
import 'modules/modules.dart';

class MediStation extends StatelessWidget {
  const MediStation({super.key, required this.injector});

  final MediInjector injector;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
