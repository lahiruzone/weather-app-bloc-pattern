import 'package:http/http.dart' as http;
import 'dart:convert';


import 'package:weather_app_bloc_pattern/weatherModel.dart';

class Weatherrepo {

  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get("https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2");

    if(result.statusCode == 200){
      throw Exception();
    }

    return pasedJson(result.body);
  }

  WeatherModel pasedJson(final responce){
    final jsonDecoded = json.decode(responce);
    final jsonWeather = jsonDecoded["main"];
    
  }

}