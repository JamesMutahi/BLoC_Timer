import 'dart:async';

import 'package:bloc_timer/ticker.dart';
import 'package:bloc_timer/timer/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  final int _duration = 60;

  StreamSubscription<int> _tickerSubscription;

  TimerBloc({@required Ticker ticker}) : assert(ticker != null), _ticker = ticker;

  @override
  TimerState get initialState => Ready(_duration);

  Stream <TimerState> mapEventToState(TimerEvent event) async* {
    // TODO: implement map event to state
  }


}