import 'package:flutter/material.dart';

import 'components.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediStation'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MediDrawer(),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.replay_rounded)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_rounded),
                style: ButtonStyle(
                  iconSize: const WidgetStatePropertyAll(75),
                  iconColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.stop),
              )
            ],
          )
        ],
      ),
    );
  }
}
