import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:weather_mate/scrollCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                Icons.menu,
                color: Colors.white,
              ),
              actions: <Widget>[Icon(Icons.add, color: Colors.white)],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: ListView(
              padding: EdgeInsets.only(top: 30),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Sector 2244',
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
                    onPageChanged: (i){
                      setState(() {
                        currentIndex = i;
                      });
                    },
                    height: 450,
                    items: <Widget>[
                      TempCard(),
                      TempCard(),
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
                                  color: (currentIndex == i) ? Colors.white: Colors.grey ,
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
}
