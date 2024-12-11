import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import '../controller/controller.dart';
import 'components.dart';

class GoalsTemplate extends StatelessWidget {
  const GoalsTemplate({super.key, required this.controller});

  final GoalsCubit controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metas e premiações'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'David Gomes',
            style: TextStyle(fontSize: 25),
          ),
          Text('Lv: $controller.level'),
          GoalsLinearIndicator(percent: controller.currentXpPercentage),
          Text('To next level: $controller.nlvdifferenceInt XP'),
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: MediColors.accent2,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const Text('Daily'),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text('Meditate 2 times 0/2 (10 XP)'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text('Meditate 2 times 0/2 (10 XP)'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text('Meditate 2 times 0/2 (10 XP)'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
