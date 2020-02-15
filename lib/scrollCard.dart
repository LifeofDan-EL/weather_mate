import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './weatherData.dart';

class TempCard extends StatelessWidget {

  final WeatherData weather;

  TempCard({@required this.weather});

  var format = DateFormat('EEEE, dd, MMM, yyyy');

  @override
  Widget build(BuildContext context) {

      var date = DateTime.parse('${weather.date}');

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
                  fontSize: 80,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(
              weather.main,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 50),
              child: Text(
                weather.feels,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
            Text(
               format.format(date),
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            Divider(
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${weather.min.toString()}°C min --- ${weather.max.toString()}°C max' ,
                    style: TextStyle(color: Colors.white54,
                    fontSize: 13),
                  ),
                  Image.network('https://openweathermap.org/img/w/${weather.icon}.png'
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
