import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

const apiKey = '0857dafc3161feeea48333cf3fb63044';

class WeatherModel {
  Coordinates coordinates;
  String city;
  String weatherDescription;

  WeatherModel(this.coordinates, this.city, this.weatherDescription);
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

// "weather": [
// {
// "id": 801,
// "main": "Clouds",
// "description": "few clouds",
// "icon": "02n"
// }
// ],
// "base": "stations",
// "main": {
// "temp": 286.6,
// "feels_like": 285.49,
// "temp_min": 284.53,
// "temp_max": 288.35,
// "pressure": 1027,
// "humidity": 57
// },
// "visibility": 10000,
// "wind": {
// "speed": 3.6,
// "deg": 320
// },
// "clouds": {
// "all": 13
// },
// "dt": 1653688886,
// "sys": {
// "type": 2,
// "id": 2019646,
// "country": "GB",
// "sunrise": 1653623630,
// "sunset": 1653681708
// },
// "timezone": 3600,
// "id": 2643743,
// "name": "London",
// "cod": 200
// }
