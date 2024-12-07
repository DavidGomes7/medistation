import 'package:just_audio/just_audio.dart';

import 'medi_player.dart';

class JustAudioImpl extends MediPlayer {
  final _player = AudioPlayer();

  void init(String url) {
    _player.setUrl(url);
  }

  @override
  Future<void> pause() async {
    await _player.pause();
  }

  @override
  Future<void> play() async {
    await _player.play();
  }

  @override
  Future<void> resume() async {
    await _player.play();
  }

  @override
  Future<void> stop() async {
    await _player.stop();
  }

  @override
  Future<void> restart() async {
    await _player.load();
  }
}
