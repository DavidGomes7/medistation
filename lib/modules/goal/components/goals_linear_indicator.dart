import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../theme/theme.dart';

class GoalsLinearIndicator extends StatelessWidget {
  const GoalsLinearIndicator({super.key, required this.percent});

  final double percent;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 200,
      lineHeight: 8,
      backgroundColor: MediColors.textSecondary,
      progressColor: MediColors.primary,
      percent: percent,
      animation: true,
      animationDuration: 1500,
    );
  }
}
