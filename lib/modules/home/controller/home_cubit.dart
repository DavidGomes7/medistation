import 'package:bloc/bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:just_audio/just_audio.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  CountDownController countDownController = CountDownController();
  AudioPlayer player = AudioPlayer();

  HomeCubit() : super(InitialHomeState());

  void init() {
    player.setUrl(
      'https://archive.org/download/calm-day-wkmllb/Mellow%20Blush%20%26%20Light%20Blending%20In%20-%20Calm%20Day.mp3',
    );
  }

  void play() {
    player.play();
    countDownController.start();
    emit(PlayHomeState());
  }

  void pause() {
    player.pause();
    countDownController.pause();
    emit(PauseHomeState());
  }

  void resume() {
    player.play();
    countDownController.resume();
    emit(PlayHomeState());
  }

  void restart() {
    player.load();
    countDownController.restart();
    emit(PlayHomeState());
  }

  void stop() {
    player.stop();
    countDownController.reset();
    emit(InitialHomeState());
  }
}
