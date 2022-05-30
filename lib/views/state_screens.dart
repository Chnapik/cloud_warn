import 'package:cloud_warn/blocs/weather_bloc.dart';
import 'package:cloud_warn/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherView extends StatefulWidget {
  WeatherView({Key? key, required this.state}) : super(key: key);

  final WeatherState state;

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  String searchCity = "";
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WeatherBloc bloc = BlocProvider.of<WeatherBloc>(context);
    return Container(
      child: Stack(
        children: [
          if (widget.state is CurrentWeatherLoading)
            Center(
                child: Container(
              child: const CircularProgressIndicator(
                color: Colors.red,
              ),
              width: 80,
              height: 80,
            )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ..._buildWeatherData(widget.state),
              TextField(
                controller: controller,
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    searchCity = val;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Enter a City',
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('Search'),
                onPressed: () {
                  print(searchCity);
                  bloc.add(CurrentCityInputted(searchCity));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildWeatherData(WeatherState state) {
    WeatherModel model;
    if (state is CurrentWeatherLoaded) {
      model = state.weatherModel;
      return [
        Text(model.city),
        Text(model.weatherDescription),
        Text(model.mainWeather.temp.toString())
      ];
    } else {
      return [];
    }
  }
}
