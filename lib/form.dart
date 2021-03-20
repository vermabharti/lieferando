import 'package:flutter/material.dart';
import 'login.dart';
import 'thanks.dart';
// import 'package:validators/validators.dart' as validator;
// import 'model.dart';
// import 'result.dart';

// void main() => runApp(MyApp());

class FormRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xfffd8a3f),
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){},
            // onPressed: () {
            //   print('Click leading');
            // },
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
              Text('Your Order', 
              style: new TextStyle(
              fontSize: 18.0,
              fontFamily: "Nunito",
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ))
          ]
        ),
        actions: <Widget>[
          new Center(child: Container(
          margin: EdgeInsets.all(10),
          child:
          GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );},
           child:new Text(
            "Sign In",
              textScaleFactor: 1.5,
              style: new TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Nunito",
              color: Colors.white,
            )),))) ,
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: () {
          //     print('Click search');
          //   },
          // ),                
        ],              
      ),
        body: TestForm(),
      ),
    );
  }
}
class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}
class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  
  @override
  Widget build(BuildContext context) {
    // final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;
  return Container( 
    // padding: EdgeInsets.all(10) ,
    child: ListView(
    children:<Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Color(0xff204051),
            width:MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
              IconButton(
                color: Colors.white, 
                icon: Icon(Icons.shopping_basket),
                onPressed: (){}),
                Text('Basket (19.00)',textAlign: TextAlign.center, style: TextStyle(color: Colors.white70,fontFamily: "Nunito", fontSize: 18, fontWeight: FontWeight.w500),)
            ],)
          ),  
          Container( 
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top:5, bottom:5),
            child:Text("Ready to eat?", textAlign: TextAlign.start, style: TextStyle(fontSize: 25, fontFamily: "Nunito",fontWeight: FontWeight.w600, color: Color(0xfffd8a3f)),)),
          Container(
            margin:EdgeInsets.only(bottom:12),
            color: Color(0xffdbdbdb), width:  MediaQuery.of(context).size.width, height: 1,),
          Container(
            margin:EdgeInsets.all(12),child:Text("Where should we deliver your order",  textAlign: TextAlign.start, style: TextStyle(fontSize: 18, fontFamily: "Nunito",fontWeight: FontWeight.w600),)),       
          Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
            child: Column(
            children: <Widget>[
              MyTextFormField(
              hintText: 'Address',
              isEmail: true,),
              MyTextFormField(
              hintText: 'Postcode',            
              isEmail: true,),
              MyTextFormField(
              hintText: 'City',            
              isEmail: true,),
              MyTextFormField(
              hintText: 'Floor',            
              isEmail: true,),
              ],
            )         
          )),
          Container(
            margin:EdgeInsets.only(bottom:12),
            color: Color(0xffececec), width:  MediaQuery.of(context).size.width, height: 1,),
          Container(
            margin:EdgeInsets.all(12),child:Text("How can we reach you?",  textAlign: TextAlign.start, style: TextStyle(fontSize: 18, fontFamily: "Nunito",fontWeight: FontWeight.w600),)),         
          Container(
            margin: EdgeInsets.all(10),
            child: Form(
            // key: _formKey,
            child: Column(
            children: <Widget>[
              MyTextFormField(
              hintText: 'Name',
              isEmail: true,),
              MyTextFormField(
              hintText: 'E-mail',            
              isEmail: true,),
              MyTextFormField(
              hintText: 'Phone number',            
              isEmail: true,),
              MyTextFormField(
              hintText: 'Company name',            
              isEmail: true,),
              ],
            )         
          )),
          Container(
          margin:EdgeInsets.only(bottom:12),
          color: Color(0xffececec), width:  MediaQuery.of(context).size.width, height: 1,),
         Container(
            margin:EdgeInsets.all(12),child:Text("When would you like your food?",  textAlign: TextAlign.start, style: TextStyle(fontSize: 18, fontFamily: "Nunito", fontWeight: FontWeight.w600),)),         
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            width:MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfff0f0f0),width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ), 
            ),
            child: 
            new DropdownButtonFormField<String>(

            hint: Text("as soon as possible"),
            items: <String>['1PM', '2PM', '3PM', '4PM'].map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value, style: TextStyle(color: Colors.black)),                
              );              
            }).toList(),
            onChanged: (_) {},
            decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10, 3, 10,3),
            enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200])),
              filled: true,
              fillColor: Colors.grey[200],
              // hintText: Localization.of(context).category, 
              // errorText: errorSnapshot.data == 0 ? Localization.of(context).categoryEmpty : null),
            ),
          ),
          ),
          Container(            
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            width:MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
              color: Colors.grey[200],
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfff0f0f0),width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ), 
            ),
            child:TextFormField(
                maxLines: 3,
                decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: "Remarks"),
          ),           
          ),
          Container(            
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child:CheckboxListTile(
          title: Text('Save the Remarks',style: TextStyle(fontSize: 18,color: Colors.black, fontFamily: "Nunito",)), 
          value: isChecked,
          activeColor: Colors.green,
          controlAffinity: ListTileControlAffinity.leading,  
          onChanged:(value){
            setState(() {
                    isChecked = value;
            });
          
          }),), 
          Container(
            margin:EdgeInsets.only(bottom:12),
            color: Color(0xffdbdbdb), width:  MediaQuery.of(context).size.width, height: 1,),
          Container(
            margin:EdgeInsets.all(12),child:Text("How could you like to pay?",  textAlign: TextAlign.start, style: TextStyle(fontSize: 18, fontFamily: "Nunito",fontWeight: FontWeight.w600),), )  ,      
            
          Container(            
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: <Widget>[
             
          CheckboxListTile(
          title: Text('Cash',style: TextStyle(fontSize: 18,color: Colors.black, fontFamily: "Nunito",)), 
          value: isChecked,
          activeColor: Colors.green,
          controlAffinity: ListTileControlAffinity.leading,   
          onChanged:(value){
            setState(() {
              isChecked = value;
            });          
          }),
          CheckboxListTile(
          title: Text('PayPal',style: TextStyle(fontSize: 18,color: Colors.black, fontFamily: "Nunito",)), 
          value: isChecked,
          activeColor: Colors.green,  
          controlAffinity: ListTileControlAffinity.leading,  
          onChanged:(value){
            setState(() {
              isChecked = value;
            });          
          }),
          CheckboxListTile(
          title: Text('Credit card',style: TextStyle(fontSize: 18,color: Colors.black, fontFamily: "Nunito",)), 
          value: isChecked,
          activeColor: Colors.green, 
          controlAffinity: ListTileControlAffinity.leading,  
          onChanged:(value){
            setState(() {
              isChecked = value;
            });          
          }),
          CheckboxListTile(
          title: Text('Klarna',style: TextStyle(fontSize: 18,color: Colors.black, fontFamily: "Nunito",)), 
          value: isChecked,
          activeColor: Colors.green,  
          controlAffinity: ListTileControlAffinity.leading,  
          onChanged:(value){
            setState(() {
              isChecked = value;
            });         
          }),
          CheckboxListTile(
          title: Text('Google Pay',style: TextStyle(fontSize: 18,color: Colors.black, fontFamily: "Nunito",)), 
          value: isChecked,
          activeColor: Colors.green,  
          controlAffinity: ListTileControlAffinity.leading,  
          onChanged:(value){
            setState(() {
              isChecked = value;
            });          
          })
        ]),),         
          Center(
            child:RaisedButton(
          color:  Color(0xfff5bf3a),
          onPressed: (){
             Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Thanks()),
        );
          },  
          child: Text(
            'Order and Pay',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Nunito",
            ),
          ),
        ))
        ],
      ),
    ]),);
  }
}
class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;
MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}