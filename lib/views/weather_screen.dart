import 'package:cloud_warn/blocs/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => WeatherBloc(),
          child: BlocBuilder(builder: (blocContext, state) {
            if (state is WeatherInitial) {
              return Container();
            } else if (state is CurrentWeatherLoading) {
              return Container();
            } else if (state is CurrentWeatherLoaded) {
              return Container();
            } else {
              return Container();
            }
          })),
    );
  }
}
