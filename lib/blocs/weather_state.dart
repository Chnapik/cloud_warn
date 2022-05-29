part of 'weather_bloc.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class CurrentWeatherLoading extends WeatherState {}

class CurrentWeatherLoaded extends WeatherState {
  final WeatherModel weatherModel;
  CurrentWeatherLoaded(this.weatherModel);
}

class WeatherLoadError extends WeatherState {
  String errorMessage;
  WeatherLoadError(this.errorMessage);
}
