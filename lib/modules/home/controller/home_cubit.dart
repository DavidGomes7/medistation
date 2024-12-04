import 'package:bloc/bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:just_audio/just_audio.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  CountDownController countDownController = CountDownController();
  AudioPlayer player = AudioPlayer();

  HomeCubit() : super(InitialHomeState()) {
    player.setUrl(
      'https://archive.org/download/calm-day-wkmllb/Mellow%20Blush%20%26%20Light%20Blending%20In%20-%20Calm%20Day.mp3',
    );
  }

  void play() {
    emit(PlayHomeState());
    player.play();
    countDownController.start();
  }

  void pause() {
    emit(PauseHomeState());
    player.pause();
    countDownController.pause();
  }

  void resume() {
    emit(PlayHomeState());
    player.play();
    countDownController.resume();
  }

  void restart() {
    emit(PlayHomeState());
    player.load();
    countDownController.restart();
  }

  void stop() {
    emit(InitialHomeState());
    player.stop();
    countDownController.reset();
  }
}
