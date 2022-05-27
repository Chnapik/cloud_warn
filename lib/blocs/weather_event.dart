part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class CurrentCityInputted extends WeatherEvent {
  String currentCity;
  CurrentCityInputted(this.currentCity);
}
