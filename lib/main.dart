import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:weather_mate/scrollCard.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Weather App',
        theme: ThemeData(
          primaryColor: Color(0xFFAAAAAA),
        ),

        home: Scaffold(
            backgroundColor:Color(0xFF222222),
            appBar: AppBar(
              leading: Icon(Icons.menu, color: Colors.white,),
              actions: <Widget>[Icon(Icons.add, color: Colors.white)],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: ListView(padding: EdgeInsets.only(left: 10, right: 10, top: 30),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Sector 2244',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8, top: 30, bottom: 40),
                child: TempCard(),
              )
            ],

            )
        ));
  }
}