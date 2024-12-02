import 'package:flutter/material.dart';

import '../controller/controller.dart';

class NotificationTemplate extends StatelessWidget {
  const NotificationTemplate({super.key, required this.controller});

  final NotificationCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('notification'),
      ),
    );
  }
}
