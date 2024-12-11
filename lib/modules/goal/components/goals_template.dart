import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../theme/theme.dart';
import '../controller/controller.dart';

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
          const SizedBox(
            child: Text(
              'David Gomes',
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            child: Row(
              children: [Text('Lv: $controller.level')],
            ),
          ),
          LinearPercentIndicator(
            width: 200,
            lineHeight: 8,
            backgroundColor: Colors.grey[300],
            progressColor: Colors.lightBlue,
            percent: controller.currentXpPercentage,
            animation: true,
            animationDuration: 1500,
          ),
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
