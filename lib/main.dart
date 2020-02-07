import 'package:bloc_timer/theme/index.dart';
import 'package:bloc_timer/ticker.dart';
import 'package:bloc_timer/timer/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => ThemeBloc(),
    child: BlocBuilder<ThemeBloc, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          theme: theme,
          home: BlocProvider(create: (_) => TimerBloc(ticker: Ticker()),
          child: TimerPage(),
          ),
          );
      }
      ),
    );
  }
}