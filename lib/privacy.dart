import 'package:flutter/material.dart'; 
import 'dart:ui';
import 'homeScreen.dart';
import 'menu.dart';
import 'suggestion.dart';
import 'package:url_launcher/url_launcher.dart';
 
class StartPage extends StatefulWidget{  
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<StartPage>{
  _launchURL() async {
           const url = 'https://www.avantipizza-heilbronn.de/about';
           if (await canLaunch(url)) {
             await launch(url);
           } else {
             throw 'Could not launch $url';
           }
         }
         _launchURL1() async {
           const url = 'https://www.avantipizza-heilbronn.de/Contact';
           if (await canLaunch(url)) {
             await launch(url);
           } else {
             throw 'Could not launch $url';
           }
         }
           _launchURL2() async {
           const url = 'https://www.avantipizza-heilbronn.de/Impressum';
           if (await canLaunch(url)) {
             await launch(url);
           } else {
             throw 'Could not launch $url';
           }
         }
           _launchURL3() async {
           const url = 'https://www.avantipizza-heilbronn.de/Terms';
           if (await canLaunch(url)) {
             await launch(url);
           } else {
             throw 'Could not launch $url';
           }
         }
           _launchURL4() async {
           const url = 'https://www.avantipizza-heilbronn.de/Terms/';
           if (await canLaunch(url)) {
             await launch(url);
           } else {
             throw 'Could not launch $url';
           }
         }
           _launchURL5() async {
           const url = 'https://www.avantipizza-heilbronn.de/Privacy';
           if (await canLaunch(url)) {
             await launch(url);
           } else {
             throw 'Could not launch $url';
           }
         }
  @override 
  Widget build(BuildContext context){   
  return new MaterialApp( 
    debugShowCheckedModeBanner: false,      
      home: new Scaffold(
        body: Center(
          child: Stack(
          children: <Widget>[
            new SingleChildScrollView(
              child: new Container(                                                 
                child: Padding(
                padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[ 
                      SizedBox(
                      height:150,
                      child:Container(
                      margin: EdgeInsets.only(top:10),
                      height: 200.0,
                      width: 200.0,
                      child: new Image(image: AssetImage("assets/images/avantilogo.jpg"),fit: BoxFit.contain,))),    
          
                      SizedBox( 
                      height: 270, 
                      child: Container(
                      transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                      // width: 300,
                      child: DefaultTabController(
                      length: 2,
                        child: Scaffold(
                        appBar: PreferredSize(
                        preferredSize: Size.fromHeight(50.0),
                        child: AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          bottom: TabBar(
                          unselectedLabelColor: Colors.redAccent,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffbf312f)),
                          tabs: [
                            Tab(
                            child: Container(  
                            padding: EdgeInsets.all(0),
                            child:Align(                                
                            alignment: Alignment.center,
                            child: Text("Delivery Time", style: TextStyle(
                             fontSize: 12, fontFamily: "Nunito",))))),
                            Tab(
                            child: Align(
                            alignment: Alignment.center,
                            child: Text("Address",style: TextStyle(
                             fontSize: 12, fontFamily: "Nunito",)))),                  
                          ]),
                        )),
                        body: TabBarView(
                        children: [
                          new Center( 
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(8, 15, 8,15),
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            color: Color(0xfff0f0f0)),
                            child: Column(children: <Widget>[
                                Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Mon',   
                                  textAlign: TextAlign.start, 
                                  style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                Text(' 11:00 - 14:00|17:00 - 23:00',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Tue',   
                                      textAlign: TextAlign.start, 
                                      style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                    Text(' 11:00 - 14:00|17:00 - 23:00',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Wed',   
                                      textAlign: TextAlign.start, 
                                      style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                    Text(' 11:00 - 14:00|17:00 - 23:00',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Thu',   
                                      textAlign: TextAlign.start, 
                                      style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                    Text(' 11:00 - 14:00|17:00 - 23:00',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  ],),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Fri',   
                                    textAlign: TextAlign.start, 
                                    style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  Text(' 11:00 - 14:00|17:00 - 23:00',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(                   
                                    color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                ],),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Sat',   
                                    textAlign: TextAlign.start, 
                                    style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  Text(' 11:30  - 23:00',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(                   
                                    color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Sun',   
                                      textAlign: TextAlign.start, 
                                      style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                    Text('11:30 - 23:00',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
                                  ],),
                                ],),  
                                )), 
                            new Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(8, 15, 8,15),
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            color: Color(0xfff0f0f0)),
                            child:                          Container(
                            padding: EdgeInsets.only(top:20),
                            width: MediaQuery.of(context).size.width,
                            // height:100, 
                            color: Color(0xfff0f0f0),
                            child: Text("Warning street Heilbronn Germany 74072",
                            textAlign: TextAlign.center,
                            style: TextStyle(                   
                              color: Colors.black, fontSize: 15, fontFamily: "Nunito",))
                            )) 
                                                          
                          ]),
                          )
                        ))),             
                     
                    new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          child: new GestureDetector(
                            onTap: _launchURL,
                            child:Container( 
                            width: MediaQuery.of(context).size.width,
                            height:90,
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(10.0),  
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xfff7f7f7),
                                blurRadius: 3.0,  
                                spreadRadius: 1.0, 
                                offset: Offset(1.0, 1.0))
                              ],
                            color: Color(0xffdff0ea)),                           
                          child: Center(child:  Column(children: <Widget>[
                            Icon(Icons.add_circle),
                          Container(margin:EdgeInsets.only(top:5),
                          child:Text('About Us', textAlign: TextAlign.center,
                          style: TextStyle(                   
                          color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)))]))                            
                          ),
                        )),
                        Expanded(
                          child: new GestureDetector(
                            onTap: _launchURL1,
                            child:Container( 
                            width: MediaQuery.of(context).size.width,
                            height: 90,
                            margin: const EdgeInsets.fromLTRB(8 ,10 , 8 , 10),
                            padding: const EdgeInsets.all(10.0),  
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xfff7f7f7),
                                blurRadius: 3.0,  
                                spreadRadius: 1.0, 
                                offset: Offset(1.0, 1.0))
                              ],
                            color: Color(0xfffff6be)),                           
                          child: Center( child: Column(children: <Widget>[
                            Icon(Icons.assignment),
                            Container(
                              margin:EdgeInsets.only(top:5),
                              child: Text("Contact Us", textAlign: TextAlign.center,
                          style: TextStyle(                   
                          color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)))
                          ],)
                         )
                          ),
                        )),
                        Expanded(
                        child: new GestureDetector(
                          onTap: _launchURL2,
                          child:Container( 
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          margin: const EdgeInsets.fromLTRB(8 ,10 , 8 , 10),
                          padding: const EdgeInsets.all(10.0),  
                          decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                           
                          color: Color(0xfff7e8e8)),                         
                        child:Center(child: Column(
                          children: [
                            Icon(Icons.description ),    
                        Container( margin:EdgeInsets.only(top:5),child: Text("Impressum", textAlign: TextAlign.center,
                        style: TextStyle(                   
                        color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)))]))
                        ),
                      )),
                      ],
                    ),
                    new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      Expanded(
                          child: new GestureDetector(
                            onTap: _launchURL3,
                            child:Container( 
                            width: MediaQuery.of(context).size.width,
                            height:120,
                            margin: const EdgeInsets.fromLTRB(8 ,10 , 8 , 10),
                            padding: const EdgeInsets.all(10.0),  
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xfff7f7f7),
                                blurRadius: 3.0,  
                                spreadRadius: 1.0, 
                                offset: Offset(1.0, 1.0))
                              ],
                            color: Color(0xfff7e8e8)), 
                          
                          child: Center(child:Column(
                            children: <Widget>[
                          Icon(Icons.insert_drive_file),    
                          Container(margin: EdgeInsets.only(top:10), child:Text("Teams and Condition", textAlign: TextAlign.center,
                          style: TextStyle(                   
                          color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)))
                            ],
                          ))
                          ),
                        )),
                      Expanded(
                          child: new GestureDetector(
                            onTap: _launchURL4,
                            child:Container( 
                            width: MediaQuery.of(context).size.width,
                            height:120,
                            margin: const EdgeInsets.fromLTRB(8 ,10 , 8 , 10),
                            padding: const EdgeInsets.all(10.0),  
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xfff7f7f7),
                                blurRadius: 3.0,  
                                spreadRadius: 1.0, 
                                offset: Offset(1.0, 1.0))
                              ],
                            color: Color(0xffdff0ea)), 
                          
                          child:Center(child: Column(children: <Widget>[
                           Icon(Icons.description), 
                          Container(
                            margin: EdgeInsets.only(top:5),
                          child:Text("Discount Teams and Condition", textAlign: TextAlign.center,
                          style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)))
                          ],))
                          ),
                        )),
                        Expanded(
                          child: new GestureDetector(
                            onTap: _launchURL5,
                            child:Container( 
                            width: MediaQuery.of(context).size.width,
                            height:120,
                            margin: const EdgeInsets.fromLTRB(8 ,10 , 8 , 10),
                            padding: const EdgeInsets.all(10.0),  
                            decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xfff7f7f7),
                                blurRadius: 3.0,  
                                spreadRadius: 1.0, 
                                offset: Offset(1.0, 1.0))
                              ],
                            color: Color(0xfffff6be)), 
                          
                          child:Center(child: Column(children: <Widget>[
                           Icon(Icons.description), 
                          Container(
                            margin: EdgeInsets.only(top:5),
                          child:Text("Privacy Statement", textAlign: TextAlign.center,
                          style: TextStyle(                   
                                      color: Colors.black, fontWeight: FontWeight.w200, fontFamily: "Nunito",)))
                          ],))
                          ),
                        )),
                      ],
                    ),                          
                      ],
                    ),
                  ),                                       
                  ),
                ),   
              ]
         ) ),   
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded( 
            child: Padding(
            padding: EdgeInsets.all(15),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffbf312f),
              child: MaterialButton( 
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () async{   
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));                
              },
              child: Text("Delivery",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
              )
            )), ),
          Expanded(
            child:Padding( 
            padding: EdgeInsets.all(15),
            child: Container(
            height: 50.0,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenu()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffbf312f),
                            style: BorderStyle.solid,
                            width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Center(
                                child: Text(
                                  "Takeaway",
                                    style: TextStyle(
                                          color: Color(0xffbf312f), fontWeight: FontWeight.w200, fontFamily: "Nunito",)
                                ),
                            )
                        ],
                    ),
                ),
            ),
        )), ),
          ]) 
        )
      );
    }
}
 

 