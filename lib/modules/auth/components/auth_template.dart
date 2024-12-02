import 'package:flutter/material.dart';

import '../controller/controller.dart';

class AuthTemplate extends StatelessWidget {
  const AuthTemplate({super.key, required this.controller});

  final AuthCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('auth'),
      ),
    );
  }
}
