import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/theme.dart';
import '../../modules.dart';
import '../controller/home_state.dart';
import 'components.dart';

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
      drawer: const HomeMediDrawer(),
      body: Center(
        child: HomeCountDownTimer(controller: controller.countDownController),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: controller.restart,
            icon: const Icon(Icons.replay_rounded),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            bloc: controller,
            builder: (_, state) {
              if (state is InitialHomeState) {
                return IconButton(
                  onPressed: controller.play,
                  icon: const Icon(Icons.play_arrow_rounded),
                  style: const ButtonStyle(
                    iconSize: WidgetStatePropertyAll(75),
                    iconColor: WidgetStatePropertyAll(MediColors.primary),
                  ),
                );
              }
              if (state is PlayHomeState) {
                return IconButton(
                  onPressed: controller.pause,
                  icon: const Icon(Icons.pause),
                  style: const ButtonStyle(
                    iconSize: WidgetStatePropertyAll(75),
                    iconColor: WidgetStatePropertyAll(MediColors.primary),
                  ),
                );
              }
              if (state is PauseHomeState) {
                return IconButton(
                  onPressed: controller.resume,
                  icon: const Icon(Icons.play_arrow_rounded),
                  style: const ButtonStyle(
                    iconSize: WidgetStatePropertyAll(75),
                    iconColor: WidgetStatePropertyAll(MediColors.primary),
                  ),
                );
              }
              return Container();
            },
          ),
          IconButton(
            onPressed: controller.stop,
            icon: const Icon(Icons.stop),
          ),
        ],
      ),
    );
  }
}
