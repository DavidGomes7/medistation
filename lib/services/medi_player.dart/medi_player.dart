import 'just_audio_impl.dart';

abstract class MediPlayer {
  Future<void> play();
  Future<void> pause();
  Future<void> stop();
  Future<void> resume();
  Future<void> restart();
}

final mediPlayer = JustAudioImpl();
