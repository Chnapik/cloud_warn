import 'package:cloud_warn/blocs/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherInitialView extends StatelessWidget {
  const WeatherInitialView({Key? key, required this.buildContext})
      : super(key: key);

  final BuildContext buildContext;

  @override
  Widget build(BuildContext context) {
    WeatherBloc bloc = BlocProvider.of<WeatherBloc>(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Enter a City',
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            child: const Text('Search'),
            onPressed: () {
              bloc.add(CurrentCityInputted('London'));
            },
          ),
        ],
      ),
    );
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
