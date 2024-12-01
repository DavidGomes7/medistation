import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import 'components.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediStation'),
        centerTitle: true,
        backgroundColor: MediColors.primary,
      ),
      drawer: const MediDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: SizedBox()),
          CircularCountDownTimer(
            width: 250,
            height: 250,
            duration: 10,
            strokeWidth: 20,
            strokeCap: StrokeCap.round,
            textStyle: const TextStyle(fontSize: 33),
            fillColor: MediColors.primary,
            ringColor: MediColors.textPrimary.withOpacity(0.08),
          ),
          const Expanded(child: SizedBox()),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.replay_rounded)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                style: const ButtonStyle(
                  iconSize: WidgetStatePropertyAll(75),
                  iconColor: WidgetStatePropertyAll(MediColors.primary),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.stop),
              )
            ],
          )
        ],
      ),
    );
  }
}
