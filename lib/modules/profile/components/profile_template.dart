import 'package:flutter/material.dart';

import '../controller/controller.dart';

class ProfileTemplate extends StatelessWidget {
  const ProfileTemplate({super.key, required this.controller});

  final ProfileCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('profile'),
      ),
    );
  }
}
