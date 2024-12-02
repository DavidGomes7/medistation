import 'package:flutter/material.dart';

import '../../modules.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key, required this.controller});

  final HomeCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    );
  }
}
