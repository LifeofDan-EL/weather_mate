import 'package:flutter/material.dart';

import './weatherData.dart';

class TempCard extends StatelessWidget {

  final WeatherData weather;

  TempCard({@required this.weather});


  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 3,
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
        '${weather.temp.toInt().toString()}°C',
              style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(
              weather.main,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 70),
              child: Text(
                weather.feels,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
            Divider(
              color: Colors.white12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${weather.min.toString()} --- ${weather.max.toString()}' ,
                  style: TextStyle(color: Colors.white54),
                ),
                Image.network('https://openweathermap.org/img/w/${weather.icon}.png'
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
