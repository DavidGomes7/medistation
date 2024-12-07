import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class HomeCountDownTimer extends StatelessWidget {
  const HomeCountDownTimer({super.key, required this.controller});

  final CountDownController controller;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      controller: controller,
      autoStart: false,
      width: 250,
      height: 250,
      duration: 172,
      strokeWidth: 20,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(fontSize: 33),
      fillColor: MediColors.primary,
      ringColor: MediColors.textPrimary.withOpacity(0.08),
    );
  }
}
