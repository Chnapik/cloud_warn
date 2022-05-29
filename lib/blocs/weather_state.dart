part of 'weather_bloc.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class CurrentWeatherLoading extends WeatherState {}

class CurrentWeatherLoaded extends WeatherState {
  final Weather;
  CurrentWeatherLoaded(this.Weather);
}

class WeatherLoadError extends WeatherState {
  String errorMessage;
  WeatherLoadError(this.errorMessage);
}
