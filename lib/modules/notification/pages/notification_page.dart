import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/components.dart';
import '../controller/controller.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationTemplate(
      controller: injector.get<NotificationCubit>(),
    );
  }
}
