import 'package:just_audio/just_audio.dart';

import 'medi_player.dart';

class JustAudioImpl extends MediPlayer {
  final player = AudioPlayer();

  @override
  Future<void> pause() async {
    await player.pause();
  }

  @override
  Future<void> play() async {
    await player.play();
  }

  @override
  Future<void> resume() async {
    await player.play();
  }

  @override
  Future<void> stop() async {
    await player.stop();
  }

  @override
  Future<void> restart() async {
    await player.load();
  }
}
