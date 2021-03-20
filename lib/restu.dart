import "package:flutter/material.dart";
import 'restaurant.dart';

class RestaurantMainPage extends StatefulWidget{
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<RestaurantMainPage>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Restaurant Main page"),
          backgroundColor: Color(0xfffd8a3f),
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            new Image.asset("assets/images/background.png", fit: BoxFit.contain),
            new Expanded(              
              child: new MainTabBar()
            )            
          ],
          
        )
      )
    );
  }
}