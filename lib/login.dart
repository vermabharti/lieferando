 
import 'package:flutter/material.dart'; 
import 'dart:ui';


class Login extends StatefulWidget{  
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<Login>{  
  TextStyle style = TextStyle(fontFamily: "Nunito", fontSize: 15.0); 
  final _formKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController(); 
  final TextEditingController password = TextEditingController();
  bool _passwordVisible = true; 
  bool checkValue = false; 

     
         @override  
         Widget build(BuildContext context){ 
           final usernameField = TextFormField(          
             obscureText: false,
             style: style,
             controller: username, 
             validator: (value){
               if(value.isEmpty){
                 return 'Username is Mandatory';
               } else return null; }, 
             decoration: InputDecoration(
               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
               hintText: "username", 
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
             ); 
     
           final passwordField = TextFormField(
             obscureText: _passwordVisible,
             style: style, 
             controller: password,
             validator: (value){
                 if (value.isEmpty) {
                   return 'Password is Mandatory';
                 } else return null; }, 
              decoration: InputDecoration(
               contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
               hintText: "Password", 
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),        
               suffixIcon: IconButton(
                   icon: Icon( 
                      _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                      ),
                   onPressed: () {
                      setState(() {
                          _passwordVisible = !_passwordVisible;
                      });
                    },
                   ),         
               ),
             );
             // final rememberMe =  new CheckboxListTile(
             //     value: checkValue,
             //     onChanged: _onChanged,
             //     title: new Text("Remember me"),
             //     controlAffinity: ListTileControlAffinity.leading,
             //   );
           final loginButon = Builder(
             builder : (context) => 
             Material(
             elevation: 5.0,
             borderRadius: BorderRadius.circular(30.0),
             color: Color(0xff283643),
             child: MaterialButton(
               minWidth: MediaQuery.of(context).size.width,
               padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
               onPressed: () async{            
                  //  if (_formKey.currentState.validate()) { 
                  //      _formKey.currentState.save(); 
                  //    _loginuser();              
                  //  }           
                 },
               child: Text("Login",
                 textAlign: TextAlign.center,
                 style: style.copyWith(
                   color: Colors.white, fontWeight: FontWeight.w200, fontFamily: "Nunito",)),
               )
             ),
           );
       
           return new MaterialApp( 
             debugShowCheckedModeBanner: false,      
             home: new Scaffold(
               body: Stack(
                 children: <Widget>[
                   new Container(
                     decoration: BoxDecoration(
                       color: const Color(0xff000000b3),
                       image: DecorationImage(
                         image: AssetImage("assets/images/pizza.jpeg"),
                         colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                         fit: BoxFit.cover,
                       ),
                     ),
                     child: Center(
                       child: new SingleChildScrollView(          
                         child: new Container(                    
                           child: Padding(
                           padding: const EdgeInsets.all(36.0),
                           child: Form(
                             key: _formKey,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               mainAxisSize: MainAxisSize.max,
                               children: <Widget>[
                                 SizedBox(
                                   child:Text(
                                     'Sign In',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       fontSize: 28,
                                        fontFamily: "Nunito",                                       
                                       fontWeight: FontWeight.bold,
                                       color:Color(0xff283643))
                                     ),
                                   ),
                                   // SizedBox(
                                   // child:Text(
                                   //   'MoH & FW (GOVT. OF INDIA)',
                                   //   textAlign: TextAlign.center,
                                   //   style: TextStyle(
                                   //     fontSize: 15,
                                   //     fontFamily: 'Open Sans',
                                   //     fontWeight: FontWeight.w600,
                                   //     color:Color(0xff283643))
                                   //   ),
                                   // ),
                                 SizedBox(height: 45.0),
                                   usernameField,
                                 SizedBox(height: 25.0),
                                   passwordField, 
                                   // rememberMe,
                                 SizedBox(height: 35.0),
                                   loginButon,                           
                                 ],
                               ),
                             ), 
                                               
                             ),
                           ),
                         ),
                       ),
                     ),
                   
                
                                 
                 ]
                   ),
               ), 
             );
           }
         }
     
    
 