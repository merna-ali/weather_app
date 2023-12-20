import 'dart:convert';

import '../features/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '3677bed89247430b7a122242220806';

  Future<WeatherModel> getWeather(String cityName) async {
    Uri url =
        Uri.parse('$baseUrl/forcast.json?key=$apiKey=&q=$cityName&day = 7');
    http.Response response = await http.get(url);
    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    } else {
      Map<String,dynamic> data = jsonEncode(response.body) as Map<String, dynamic>;
      WeatherModel weather= WeatherModel.fromJson(data);
      return weather;
    }
  }
}
