import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/weather_staates.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());
  String? CityName;

  WeatherService weatherService;
  WeatherModel? weathermodel;

  void getWeather({required String Cityname}) async {
    emit(WeatherLoading());
    try {
      weathermodel = await weatherService.getWeather(cityName: Cityname);
      emit(WeatherSuccess());
    } on Exception catch (e) {
      emit(WeatherFailer());
    }
  }
}
