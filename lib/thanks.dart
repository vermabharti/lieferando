
import 'package:flutter/material.dart';
 
void main() => runApp(Thanks());
 
class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor:  Color(0xfff5bf3a),
            body: SafeArea(
              child: Center(
                      child: (  Text('Thank You',
                      style: TextStyle(
                        fontStyle:   FontStyle.italic, 
                        fontFamily: "Nunito",
                        fontSize: 35,
                  color: Colors.white),
                      )  )
                        )
                    )
                )
            );
  }
}