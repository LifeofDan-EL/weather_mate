import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
      Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Weather App',
        theme: ThemeData(
          primaryColorDark: Colors.black
        ),

        home: Scaffold(
          backgroundColor: Colors.black45,
          appBar: AppBar(
            backgroundColor: Colors.black45,
                       ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child:Icon(Icons.dehaze, size: 30, color: Colors.white,) ,
              ),
              Align(
                alignment: Alignment.topRight,
                child:Icon(Icons.add, size: 50, color: Colors.white,),
              ),
            ],
          ),
          ),
      );


}
}