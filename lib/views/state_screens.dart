import 'dart:js';

import 'package:cloud_warn/blocs/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherInitialView extends StatelessWidget {
  const WeatherInitialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherBloc bloc = BlocProvider.of<WeatherBloc>(context);
    // bloc.add(CurrentCityInputted('London')); <=== use with button
    return Container();
  }
}

class CurrentWeatherLoadingView extends StatelessWidget {
  const CurrentWeatherLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CurrentWeatherLoadedView extends StatelessWidget {
  const CurrentWeatherLoadedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class WeatherLoadErrorView extends StatelessWidget {
  const WeatherLoadErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
