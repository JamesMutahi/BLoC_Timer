import 'package:bloc_timer/timer/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final int _duration = 60;

  @override
  TimerState get initialState => Ready(_duration);

  Stream <TimerState> mapEventToState(TimerEvent event) async* {
    // TODO: implement map event to state
  }


}