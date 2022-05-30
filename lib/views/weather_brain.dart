import 'package:cloud_warn/blocs/weather_bloc.dart';
import 'package:cloud_warn/views/state_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBrain extends StatelessWidget {
  const WeatherBrain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(),
          child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (blocContext, state) {
            return WeatherView(state: state);
          })),
    );
  }
}
