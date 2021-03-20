// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'menu.dart';
// import 'restu.dart';
// import 'translator.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lieferando/privacy.dart';
import 'form.dart';
import 'homeScreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,  
    // home: RestaurantMainPage(),
    // home: FormRestaurant(),
    // home: MainMenu(),  
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new StartPage()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffffffff),
      body: new Center(
        child: new Image.asset('assets/images/avantilogo.jpg', width: 230,),
      ),
    );
  }
}