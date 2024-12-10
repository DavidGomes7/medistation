abstract class MediPlayer {
  Future<void> play();
  Future<void> pause();
  Future<void> stop();
  Future<void> resume();
  Future<void> restart();
}
