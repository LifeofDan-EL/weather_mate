
class WeatherData {
//  final String location;
  final double temp;
  final String main;
  final String feels;
  final DateTime date;
  final String icon;
  final double min;
  final double max;

  WeatherData ({ this.temp, this.main,this.feels, this.date, this.icon, this.min, this.max,});

  factory WeatherData.fromJson(Map<String, dynamic>json){
    return WeatherData(
//      location: json['name'],
      temp: json['temp']['day'],
      main: json['weather'][0]['main'],
      feels: json['weather'][0]['description'],
      date: new DateTime.fromMicrosecondsSinceEpoch(json['dt'] * 1000, isUtc: false),
      icon: json['weather'][0]['icon'],
      min: json['temp']['min'],
      max: json['temp']['max'],

    );
  }
}