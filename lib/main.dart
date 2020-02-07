import 'package:bloc_timer/theme/theme_bloc.dart';
import 'package:bloc_timer/timer/timer_page.dart';
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
          home: TimerPage(),
          );
      }
      ),
    );
  }
}