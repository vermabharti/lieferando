import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
 
void main() => runApp(new MainMenu());

class MainMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MainMenu> { 
  bool _isvisble = true;

   void showToast() {
      setState(() {
        _isvisble = !_isvisble;
      });
    } 
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          // appBar: AppBar(
          // title: Text("Restaurant Main page"),
          // backgroundColor: Color(0xfffd8a3f),
          // elevation: 0,
          // ),
           
          body:new Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[               
              Container(
                // height: 300,
                child: new Image.asset("assets/images/pizza1.jpeg", fit: BoxFit.contain),
                ),             
              FractionalTranslation(
                translation: Offset(0.0, 0.5),
                child: Container(
                  decoration: new BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/logo.jpg"),
                              )
                ),
            // child: Image.asset("assets/images/logo.jpg", fit:BoxFit.contain),
            // color: Colors.red,
            width: 120,
            height: 120,
          ),
        ),                    
           ],) 
          // Column(
          //   children: <Widget>[SS
             
          //   ],         ) 
             //     body: new Container( 
      //       child : Column(
      //       children: <Widget>[
      //       Stack(
      //       //height: double.infinity,            
      //       children: <Widget>[
      //         new Image.asset("assets/images/background.png", fit: BoxFit.contain),
      //         // PositionSSSed(
      //         //    child: Container( 
      //         //       width:100,
      //         //       height:100,
      //         //       decoration: BoxDecoration(
      //         //       shape: BoxShape.circle,
      //         //       image: DecorationImage(
      //         //       image: AssetImage('assets/images/resto_logo.jpg'),
      //         //       colorFilter: new ColorFilter.mode(Colors.black38.withOpacity(0.5), BlendMode.lighten),
      //         //       fit: BoxFit.fill, 
      //         //     ),
      //         //   ),  
      //         //   ),
      //         //   top: 10.0,
      //         //   left: 50.0,
      //         // ),                 
      //       ],
      //       ),
      //       new Column(
      //         children: <Widget>[
      //           new Container(
      //           child: Text(
      //             "Satluj indisches restaurant",
      //             style: TextStyle(
      //           fontSize: 20,
      //         )
      //           ),
      //       ),
      //       new Container(
      //         child: RichText(
      //   text: TextSpan(
      //     // set the default style for the children TextSpans
      //     style: Theme.of(context).textTheme.body1.copyWith(fontSize: 15),
      //     children: [
      //       TextSpan(
      //           text: 'This restaurant provides stamps. To receive them via email please make sure you ...  ',
      //       ),
      //       TextSpan(
      //         text: 'Read More',
      //         style: TextStyle(
      //           color: Colors.blue
      //         )
      //       ),
      //       // TextSpan(
      //       //     text: ' in Flutter',
      //       // ),
      //     ]
      //  , )
      // )
      //       )
      //       ]),
      //       new Container(  
      //           child: new Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: <Widget>[                
      //             new Container(
      //             width:MediaQuery.of(context).size.width,
      //             // height: 150, 
      //             // margin: const EdgeInsets.all(100), 
      //             padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),         
      //             child: new Card(            
      //               child: Row(
      //                 children: <Widget>[ 
      //                   // Container(                                                        
      //                   //   height:100.0,
      //                   //   width: 50.0,
      //                 //   margin: const EdgeInsets.all(20),
      //                   //   child: new Image(image: AssetImage("assets/images/pizza.jpeg"), width: 150, height: 150), 
      //                   // ), 
      //                   // new VerticalDivider(),
      //                   Container(color: Color(0xffdbdbdb), height: 120, width: 1,),
      //                   Column(children: <Widget>[
      //                     Container( 
      //                     margin: const EdgeInsets.only(bottom:0), 
      //                     child: Column( 
      //                       children: <Widget>[                           
      //                         Text('Chicken Makhani', style: TextStyle(fontSize: 15),),
      //                         Text('Satluj indisches restaurant', style: TextStyle(fontSize: 10),),           
      //                       ],),),  
      //                     Container( 
      //                     margin: const EdgeInsets.only(bottom:0), 
      //                     child: Column( 
      //                       children: <Widget>[                           
      //                         Text('Chicken Makhani', style: TextStyle(fontSize: 15),),
      //                         Text('Satluj indisches restaurant', style: TextStyle(fontSize: 10),),           
      //                       ],),),           
                        
      //                     ])]
      //                   )       
                            
      //                     ),
      //                     ),                      
      //             ],
      //           ),              
      //         ),  
      //         ]
      //       )
      //     )
          ),
        ),
      
    );
  }
}






              Positioned( // --> App Bar
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: Padding( // --> Custom Back Button
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      mini: true,
                      // onPressed: Navigator.of(context).pop();
                      child: Icon(Icons.arrow_back, color: Color(0xfff7f7f7)), onPressed: () {},
                    ),
                  ),
                ),
              ), 


              import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'data.dart'; 

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_typeahead demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: TabBar(tabs: [
              Tab(text: 'Example 1: Navigation'),
              Tab(text: 'Example 2: Form'),
              Tab(text: 'Example 3: Scroll')
            ]),
          ),
          body: TabBarView(children: [
            NavigationExample(),
            FormExample(),
            ScrollExample(),
          ])),
    );
  }
}

class NavigationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
              autofocus: true,
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(fontStyle: FontStyle.italic),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What are you looking for?'),
            ),
            suggestionsCallback: (pattern) async {
              return await BackendService.getSuggestions(pattern);
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(suggestion['name']),
                subtitle: Text('\$${suggestion['price']}'),
              );
            },
            onSuggestionSelected: (suggestion) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductPage(product: suggestion)));
            },
          ),
        ],
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();

  String _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this._formKey,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text('What is your favorite city?'),
            TypeAheadFormField(
              textFieldConfiguration: TextFieldConfiguration(
                decoration: InputDecoration(labelText: 'City'),
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
                  return 'Please select a city';
                }
              },
              onSaved: (value) => this._selectedCity = value,
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text('Submit'),
              onPressed: () {
                if (this._formKey.currentState.validate()) {
                  this._formKey.currentState.save();
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content:
                      Text('Your Favorite City is ${this._selectedCity}')));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class ScrollExample extends StatelessWidget {
  final List<String> items = List.generate(5, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Suggestion box will resize when scrolling"),
          )),
      SizedBox(height: 200),
      TypeAheadField<String>(
        getImmediateSuggestions: true,
        textFieldConfiguration: TextFieldConfiguration(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'What are you looking for?'),
        ),
        suggestionsCallback: (String pattern) async {
          return items
              .where((item) =>
              item.toLowerCase().startsWith(pattern.toLowerCase()))
              .toList();
        },
        itemBuilder: (context, String suggestion) {
          return ListTile(
            title: Text(suggestion),
          );
        },
        onSuggestionSelected: (String suggestion) {
          print("Suggestion selected");
        },
      ),
      SizedBox(height: 500),
    ]);
  }
}

class ProductPage extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text(
              this.product['name'],
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              this.product['price'].toString() + ' USD',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      ),
    );
  }
}








  void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            height: 1000,
            child: new Wrap(
            children: <Widget>[
            Container(
              width:280,  
              alignment: Alignment.topLeft,   
              margin: const EdgeInsets.only(top:50, bottom:20),        
              child: new Center( child:Text("Your Basket", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight:FontWeight.w600,
                fontFamily: "Nunito",
              ))),
            ), 
            new ListTile(
            // leading: new Icon(Icons.music_note),
            title: new Text('Your Items', style: TextStyle(
                fontSize: 15,
                fontWeight:FontWeight.w600,
                fontFamily: "Nunito",
              )),
            onTap: () => {}          
          ),
          new ListTile(
            // leading: new Icon(Icons.videocam),
            title: new Text('Total Quantity', style: TextStyle(
                fontSize: 15,
                fontWeight:FontWeight.w600,
                fontFamily: "Nunito",
              ) ),
            onTap: () => {},          
          ), 
          Container(
              alignment: Alignment.bottomCenter,
              child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xfff5bf3a),
              child: MaterialButton(
                minWidth: 200,                
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CartPage(),
                    //   ),
                    // );
           Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FormRestaurant()),
        );
          },                
                child: Text("Checkout",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: "Nunito",
                  color: Colors.white),),
                )
              ),
            )
            ],
          ),
          );
      }
    );
} 






  void _settingModalBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            height: 1000,
            child: new Wrap(
            children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.music_note),
            title: new Text('Item'),
            onTap: () => {}          
          ),
          new ListTile(
            leading: new Icon(Icons.videocam),
            title: new Text('Pay'),
            onTap: () => {},          
          ),
            ],
          ),
          );
      }
    );
} 