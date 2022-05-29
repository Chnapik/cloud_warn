import 'dart:convert';
import 'package:cloud_warn/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  Future<WeatherModel?> fetchWeather({required String forCity}) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$forCity&appid=0857dafc3161feeea48333cf3fb63044'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var data = jsonDecode(response.body);
      var coordinates = Coordinates.fromJson(data['coord']);
      var mainWeather = MainWeather.fromJson(data['main']);
      var city = data['name'];
      var weatherDescription = data['description'];
      return WeatherModel(coordinates, mainWeather, city, weatherDescription);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      return null;
    }
  }
}
