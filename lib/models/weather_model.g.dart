// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      (json['lon'] as num).toDouble(),
      (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };

MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) => MainWeather(
      (json['temp'] as num).toDouble(),
      json['humidity'] as int,
    );

Map<String, dynamic> _$MainWeatherToJson(MainWeather instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
    };
