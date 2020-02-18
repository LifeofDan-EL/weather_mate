
class WeatherData {
//  final String location;
  final double temp;
  final String main;
  final String feels;
  final DateTime date;
  final String icon;
  final double min;
  final double max;
  final String extra;

  WeatherData ({ this.temp, this.main,this.feels, this.date, this.icon, this.min, this.max, this.extra});

  factory WeatherData.fromJson(Map<String, dynamic>json){
    return WeatherData(
//      location: json['name'],
      temp: json['main']['temp'],
      main: json['weather'][0]['main'],
      feels: json['weather'][0]['description'],
      extra: json['dt_txt'],
      date: new DateTime.fromMillisecondsSinceEpoch(json['dt'] , isUtc: false),
      icon: json['weather'][0]['icon'],
      min: json['main']['temp_min'],
      max: json['main']['temp_min'],
    );
  }
}