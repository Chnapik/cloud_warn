import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

class WeatherModel {
  Coordinates coordinates;
  MainWeather mainWeather;
  String city;
  String weatherDescription;

  WeatherModel(
      this.coordinates, this.mainWeather, this.city, this.weatherDescription);
}

@JsonSerializable()
class Coordinates {
  double lon;
  double lat;

  Coordinates(this.lon, this.lat);

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@JsonSerializable()
class MainWeather {
  double temp;
  int humidity;

  MainWeather(this.temp, this.humidity);

  factory MainWeather.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherFromJson(json);
}
