import 'package:cloud_warn/repos/weather_repository.dart';
import 'package:cloud_warn/views/weather_brain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherBrain(),
    );
  }
}
