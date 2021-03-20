import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';
import 'changeLanguage.dart';
// import 'restaurant.dart'; 
import 'data.dart';
import 'menu.dart'; 
import 'todo.dart';
import 'translator.dart';

void main() async {
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(HomeScreen(
    appLanguage: appLanguage,
  ));
}

class HomeScreen extends StatelessWidget {
  final AppLanguage appLanguage;

  HomeScreen({this.appLanguage});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (_) => appLanguage,
      child: Consumer<AppLanguage>(builder: (context, model, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // locale: model.appLocal,
          supportedLocales: [
            Locale('en', 'US'),
            Locale('ge', ''),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],

          home: AppLang(),
        );
      }),
    );
  }
}

class AppLang extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<AppLang>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();

  String _selectedCity;

  // final _formKey = GlobalKey<FormState>();

  final TextEditingController code1 = TextEditingController(); 
 
   Future<dynamic> _loginuser() async {  
      String code = _selectedCity;
      print(code);       
      if(code == "80335"  || code == "80336" || code == "80337" || code == "80339" ||
      code ==  "80469"  || code ==  "80538" || code ==  "80539" || code == "80634" || code ==  "80637"  
      || code == "80638" || code == "80639" || code ==  "80686"  || code == "80687"  ||
      code == "80689" || code ==  "80796" || code ==  "80797" || code ==  "80798" || code ==  "80799" 
      || code ==  "80801" || code == "80802" || code == "80803"  || code == "80804" || code == "80805" ||
      code == "80807"  || code == "80809" || code == "80933" || code == "80935" ||
      code ==  "80937"  || code ==  "80939" || code ==  "80992" || code == "80993" || code ==  "80995"  
      || code == "80997" || code == "80999" || code ==  "81241"  || code == "81243"  ||
      code == "81245" || code ==  "81247" || code ==  "81249" || code ==  "81369" || code ==  "81371" 
      || code ==  "81373" || code == "81375" || code == "81377"  || code == "81379" || code == "81475" ||
      code == "81476"  || code == "81477" || code == "81479" || code == "81539" ||
      code ==  "81541"  || code ==  "81543" || code ==  "81547" || code == "81667" || code ==  "80636"  
      || code == "81671" || code == "81675" || code ==  "81679"  || code == "81925"  ||
      code == "82152" || code ==  "70569" || code ==  "70569" )
      {          
        return Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainMenu()),
        );
               } else { 
                 return showDialog(
                   context: context,
                   builder: (BuildContext context) {
                   return AlertDialog(
                   backgroundColor: Color(0xffffffff),
                   title: Text("Delivery is not available", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Nunito", fontSize:13, color: Color(0xff000000))),
                   actions: <Widget>[ 
                   new FlatButton(
                     child: new Text("Close"),
                     onPressed: () {
                       Navigator.of(context).pop();
                     },
                   ),
                 ],
                   );});
                 } 
               }  
     
   
     
     
 Widget build(BuildContext context) {
    return  Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar( 
        elevation: 0.0,
        backgroundColor: Color(0xffffffff),        
        iconTheme: IconThemeData(
          color: Colors.white,
        ),   
      ),
      body: Center( child: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            SizedBox(
            height:150,
            child:Container(
            margin: EdgeInsets.only(top:10),
            height: 200.0,
            width: 200.0,
            child: new Image(image: AssetImage("assets/images/avantilogo.jpg"),fit: BoxFit.contain,))),    
          
            Container(
              width:280,  
              alignment: Alignment.center,   
              margin: const EdgeInsets.only(bottom:20),        
              child: new Center( child:Text("Check if we're already available in your area", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Nunito",
                fontWeight:FontWeight.w600,
              ))),
            ), 
            Container(
              padding: const EdgeInsets.only( top:10,bottom:30),
              child: new Text('Enter Postal code',
              style: TextStyle(
                fontFamily: "Nunito"
              )), 
            ),  
            SizedBox(
              height:150,
                 child:Container(
                  width:200,
                  padding: const EdgeInsets.only( top:10,bottom:30),
                  child: 
                  Form(
      key: this._formKey,      
      child: Column(
          children: <Widget>[ 
            TypeAheadFormField( 
              textFieldConfiguration: TextFieldConfiguration(
                textCapitalization: TextCapitalization.sentences,
                    textAlign: TextAlign.center,
                // decoration: InputDecoration(labelText: 'City'),
                controller: this._typeAheadController,
              ),
              suggestionsCallback: (pattern) {
                return CitiesService.getSuggestions(pattern);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  title: Text(suggestion),
                );
              },
              transitionBuilder: (context, suggestionsBox, controller) {
                return suggestionsBox;
              },
              onSuggestionSelected: (suggestion) {
                this._typeAheadController.text = suggestion;
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please select a ZinCode';
                }
              },
              onSaved: (value) => this._selectedCity = value,
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // RaisedButton(
            //   child: Text('Submit'),
            //   onPressed: () {
            //     if (this._formKey.currentState.validate()) {
            //       this._formKey.currentState.save();
            //       Scaffold.of(context).showSnackBar(SnackBar(
            //           content:
            //           Text('Your Favorite City is ${this._selectedCity}')));
            //     }
            //   },
            // )
          ],
        
      ),
    ),
                  ),
            //       Form(
            //        key: _formKey,
            //        child:TextFormField(
            //         controller: code1, 
            //         validator: (value){
            //           if(value.isEmpty){
            //             return 'enter the postal code';
            //           } else return null; }, 
            //         textCapitalization: TextCapitalization.sentences,
            //         textAlign: TextAlign.center,
            //         // decoration: new InputDecoration(labelText: "Enter zip Code"),
            //         keyboardType: TextInputType.number,
            //         inputFormatters: <TextInputFormatter>[
            //         WhitelistingTextInputFormatter.digitsOnly
            //       ], // Only numbers can be entered
            // ))
            ),           
            Container(
              alignment: Alignment.bottomCenter,
              child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xffbf312f),
              child: MaterialButton(
                minWidth: 200,                
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () async{ 
                  if (this._formKey.currentState.validate()) {
                  this._formKey.currentState.save();
                  // print("object $_selectedCity");
                  _loginuser();
                  }},             // onPressed: _loginuser,                 
                child: Text("Next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: "Nunito",
                  color: Colors.white),),
                )
              ),
            )
          ],
        ),
      ),      
      ), 
      )         
    );
  }
}