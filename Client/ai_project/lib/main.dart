// @dart=2.9
import 'package:ai_project/cons.dart';
import 'package:ai_project/screens/main_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme
            .of(context)
            .textTheme
            .apply(bodyColor: kTextColor),
        //TextTheme(body1: TextStyle(fontSize: 18)),
        fontFamily: 'Varela',
//        scaffoldBackgroundColor: Colors.white,
//        primaryColor: Colors.blueAccent,
//        accentColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      routes: {
        '/main-page': (context) => MainPage(),
      },
    );
  }
}
