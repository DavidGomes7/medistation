import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  GoalsCubit() : super(GoalsInitial());

  int level = 10;
  double currentXp = 1500;
  double toNextLevel = 2100;

  double get nextLevelDifference => toNextLevel - currentXp;
  int get nlvdifferenceInt => nextLevelDifference.toInt();
  double get currentXpPercentage => ((currentXp / toNextLevel) * 100) / 100;
}
