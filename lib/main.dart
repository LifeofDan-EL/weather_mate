import 'package:carousel_slider/carousel_slider.dart';
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
            body: ListView(padding: EdgeInsets.only(  top: 30),
            physics: BouncingScrollPhysics(

            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Sector 2244',
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

                  scrollPhysics: BouncingScrollPhysics(
                  ),
                  height: 450,
                  items: <Widget>[
                    TempCard(),
                    TempCard(),
                    TempCard(),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                      width: 20,
                      child: ClipOval(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],

            )
        ));
  }
}