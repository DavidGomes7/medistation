import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../theme/theme.dart';
import 'components.dart';

class HomeTemplate extends StatefulWidget {
  const HomeTemplate({super.key});

  @override
  State<HomeTemplate> createState() => _HomeTemplateState();
}

class _HomeTemplateState extends State<HomeTemplate> {
  final countDownController = CountDownController();
  final player = AudioPlayer();

  bool isPlaying = false;

  @override
  void initState() {
    player.setUrl(
      'https://archive.org/download/calm-day-wkmllb/Mellow%20Blush%20%26%20Light%20Blending%20In%20-%20Calm%20Day.mp3',
    );
    super.initState();
  }

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
