import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../modules.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key, required this.controller});

  final HomeCubit controller;

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
            controller: countDownController,
            autoStart: false,
            width: 250,
            height: 250,
            duration: 172,
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
              IconButton(
                onPressed: countDownController.restart,
                icon: const Icon(Icons.replay_rounded),
              ),
              IconButton(
                onPressed: () {
                  if (!isPlaying) {
                    setState(() {
                      isPlaying = true;
                      countDownController.start();
                    });
                  } else {
                    setState(() {
                      isPlaying = false;
                      countDownController.pause();
                    });
                  }
                },
                icon: Icon(isPlaying ? Icons.pause_outlined : Icons.play_arrow_rounded),
                style: const ButtonStyle(
                  iconSize: WidgetStatePropertyAll(75),
                  iconColor: WidgetStatePropertyAll(MediColors.primary),
                ),
              ),
              IconButton(
                onPressed: countDownController.reset,
                icon: const Icon(Icons.stop),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
