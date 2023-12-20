class WeatherModel {
  DateTime dateTime;
  double? temp;
  double? maxTemp;
  double? minTemp;
  String? weatherStateName;

  WeatherModel(
      {required this.dateTime,
        required this.temp,
        required this.maxTemp,
        required this.minTemp,
        required this.weatherStateName});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var jsonData = json['forcast']['forecastday'][0]['day'];
    return WeatherModel(dateTime: DateTime.parse(json['current']['last_updated']),
        temp: jsonData['avgtemp_c'],
        maxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text']);
  }



}