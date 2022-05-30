import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_warn/repos/weather_repository.dart';
import 'package:meta/meta.dart';
import 'package:cloud_warn/models/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<CurrentCityInputted>((event, emit) async {
      emit(CurrentWeatherLoading());

      WeatherRepository repo = WeatherRepository();
      WeatherModel? weatherModel =
          await repo.fetchWeather(forCity: event.currentCity);

      if (weatherModel != null) {
        emit(CurrentWeatherLoaded(weatherModel));
      } else {
        emit(WeatherLoadError('Weather failed to load'));
      }
    });
  }
}
