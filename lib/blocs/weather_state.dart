part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class CurrentWeatherLoading extends WeatherState {}

class CurrentWeatherLoaded extends WeatherState {
  final Weather;
  CurrentWeatherLoaded(this.Weather);
}

class WeatherError extends WeatherState {
  String errorMessage;
  WeatherError(this.errorMessage);
}
