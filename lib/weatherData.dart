
class WeatherData {
  final String location;
  final double temp;
  final String main;
  final String feels;
  final DateTime date;
  final String icon;

  WeatherData ({this.location, this.temp, this.main,this.feels, this.date, this.icon});

  factory WeatherData.fromJson(Map<String, dynamic>json){
    return WeatherData(
      location: json['name'],
      temp: json['temp'],
      main: json['main'],
      feels: json['feels like'],
      date: new DateTime.fromMicrosecondsSinceEpoch(json['dt'] * 1000, isUtc: false),
      icon: json['icon'],
    );
  }
}