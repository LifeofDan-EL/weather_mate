import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:weather_mate/scrollCard.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import './weatherData.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = false;
  Map<String, dynamic> weatherData;

  @override
  void initState() {
    super.initState();
    loadWeather();
  }

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Weather App',
        theme: ThemeData(
          primaryColor: Color(0xFFAAAAAA),
        ),
        home: Scaffold(
            backgroundColor: Color(0xFF222222),
            appBar: AppBar(
              leading: Icon(
                Icons.sort,
                color: Colors.white,
              ),
              actions: <Widget>[Icon(Icons.add, color: Colors.white)],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: (isLoading)
                ? Center(child: CircularProgressIndicator())
                : (WeatherData == null)
                    ? Center(
                        child: Text(
                            'No internet connection, please connect and retry'),
                      )
                    : ListView(
                        padding: EdgeInsets.only(top: 30),
                        physics: BouncingScrollPhysics(),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              '${weatherData["city"]["name"]}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          //Padding(
                          //   padding: const EdgeInsets.only(right: 8, left: 8, top: 30, bottom: 40),
                          //  child: TempCard(),
                          // )
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 20),
                            child: CarouselSlider(
                              enableInfiniteScroll: false,
                              scrollPhysics: BouncingScrollPhysics(),
                              initialPage: currentIndex,
                              onPageChanged: (i) {
                                setState(() {
                                  currentIndex = i;
                                });
                              },
                              height: 450,
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
//                                    print([weatherData["list"]][0]);
                                    return TempCard(
                                      weather: WeatherData.fromJson(
                                          weatherData['list'][i]),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  0,
                                  1,
                                  2,
                                  3,
                                  4,
                                ].map((i) {
                                  return Builder(builder: (context) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: ClipOval(
                                          child: Container(
                                            color: (currentIndex == i)
                                                ? Colors.white
                                                : Colors.grey,
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                                }).toList()),
                          )
                        ],
                      )));
  }

  loadWeather() async {
    setState(() {
      isLoading = true;
    });

    final forecastResponse = await http.get(
        'http://api.openweathermap.org/data/2.5/forecast?q=Enugu&appid=8b7013ec963de35f718a1ebff7eb1843&cnt=7&units=metric');

    if (forecastResponse.statusCode == 200) {
      return setState(() {
        weatherData = jsonDecode(forecastResponse.body);
        isLoading = false;
      });
    }

    setState(() {
      isLoading = false;
    });
  }
}
