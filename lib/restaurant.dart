import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Cart.dart';
import 'dish_object.dart'; 
  

class MainTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainTabBarState();
}

class MainTabBarState extends State<MainTabBar> {

    List<Dish> _dishes = List<Dish>();
    List<Dish> _cartList = List<Dish>();
  void _populateDishes() {
  var list = <Dish>[
    Dish(
      name: 'Chicken Zinger',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
    ),
    Dish(
      name: 'Chicken Zinger without chicken',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
    ),
    Dish(
      name: 'Rice',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
    ),
    Dish(
      name: 'Beef burger without beef',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
    ),
    Dish(
      name: 'Laptop without OS',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
    ),
    Dish(
      name: 'Mac wihout macOS',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
    ),
  ];

  setState(() {
    _dishes = list;
  });
}

@override
void initState() {
  super.initState();
  _populateDishes();
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
  @override
  Widget build(BuildContext context) {
    double _bodyHeight=0.0;
    return new MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child:Transform.translate(
              offset: Offset(0.0,-10.0),
              child: new Container(
              margin: EdgeInsets.only(left:10, right:10), 
              // padding: EdgeInsets.only(left:10, right: 10),
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    // new Expanded(child: Container()),
                    new Container( 
                      color:Color(0xfff5f0e3),
                      child:TabBar(
                      labelColor: Colors.red,
                      tabs: [
                        Tab(child:Text('Oven-fresh Pizza',
                        style:TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Nunito",
                          color: Colors.black
                        )
                        )),
                        Tab(child:Text('Vegetarian Pizza',
                        style:TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Nunito",
                          color: Colors.black
                        )
                        )),
                        Tab(child:Text('Pizza Bread',
                        style:TextStyle(
                          fontSize: 10,
                          fontFamily: "Nunito",
                          color: Colors.black
                        )
                        )),
                      ],
                    ),)
                  ],
                ),
              ),
            ),
            ),            
          ),
          
          body: new Container(
            height: double.infinity,
            child: new TabBarView(
            children: <Widget>[  
                          
             new Container( 
                padding: const EdgeInsets.all(10),   
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,                  
                  children: <Widget>[   
                    new Container( 
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),  
                      // height: 40,
                      color:Color(0xfff5f0e3),
                      child: Row(
                         children: [      
                        Text("Popular Dishes", style: TextStyle(fontFamily: "Nunito",fontSize: 18, fontWeight: FontWeight.w400),), 
                        GestureDetector(
  child: Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Icon(
        Icons.shopping_cart,
        size: 36.0,
      ),
      if (_cartList.length > 0)
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: Text(
              _cartList.length.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ),
        ),
    ],
  ),
  onTap: () {
    if (_cartList.isNotEmpty)
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Cart(_cartList),
        ),
      );
  },
)
            
                  ])),
                  Expanded(
                    child: SizedBox(
                      height: 1000,
                   child:ListView.builder(
      itemCount: _dishes.length,
      itemBuilder: (context, index) {
        var item = _dishes[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 2.0,
          ),
          child: Card(
            elevation: 4.0,            
            child:  IntrinsicHeight(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
            flex: 3,
            child: Column(children:  [
              Container( padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),alignment: Alignment.topLeft, child: Text(item.name, textAlign:TextAlign.start,style: TextStyle(fontFamily: "Nunito", fontSize: 18, fontWeight: FontWeight.w500),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),child:Text(item.description, style: TextStyle(fontFamily: "Nunito",fontSize: 12),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 5),alignment: Alignment.topLeft, child:Text(item.choice, style: TextStyle(fontFamily: "Nunito",fontSize: 12),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 15),alignment: Alignment.topLeft,  child:Text(item.price, style: TextStyle(fontFamily: "Nunito",fontSize: 12, color: Colors.orange),)),
            ]),
            ),
             Expanded(
            flex: 1,
            child: Container( 
            width: 10,
            height: 50,
            padding: const EdgeInsets.fromLTRB(2, 1, 1, 5),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(5),
              //   shape: BoxShape.rectangle,
              //   color: Colors.white,
              //   border: Border.all(
              //     width: 0.5
              //   )
              // ),
            child: GestureDetector( 
               onTap: () {
                  setState(() {
                    if (!_cartList.contains(item))
                      _cartList.add(item);
                    else
                      _cartList.remove(item);
                  });
                },
             child:  (!_cartList.contains(item))
                    ? Icon(
                        Icons.add_circle,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.check,
                        color: Colors.red,
                      ),
        //      IconButton(
        //       iconSize: 20,
        //     alignment: Alignment.topRight,
        //       icon: Icon(Icons.add),
        //       onPressed: (){
        //   _settingModalBottomSheet(context);
        // },
        //     )
            ),)),
            ]))
          ),
        );
      },
    ))),
     
             
                  ],
                ),              
              ),   
             new Container( 
                padding: const EdgeInsets.all(10),   
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,                  
                  children: <Widget>[   
                    new Container( 
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),  
                      // height: 40,
                      color:Color(0xfff5f0e3),
                      child: Text("Popular Dishes", style: TextStyle(fontFamily: "Nunito",fontSize: 18, fontWeight: FontWeight.w400),),),             
                  new Container(
                  width:MediaQuery.of(context).size.width,
                  // height: 150, 
                  // margin: const EdgeInsets.all(100), 
                  padding: const EdgeInsets.only(top:10),         
                  child: new Card(            
                    child:  IntrinsicHeight(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 3,
            child: Column(children:  [
              Container( padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),alignment: Alignment.topLeft, child: Text('Vegetarian Pizza', textAlign:TextAlign.start,style: TextStyle(fontFamily: "Nunito", fontSize: 18, fontWeight: FontWeight.w500),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),child:Text('All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.', style: TextStyle(fontFamily: "Nunito",fontSize: 12),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 5),alignment: Alignment.topLeft, child:Text('Choice: Milk, coffee', style: TextStyle(fontFamily: "Nunito",fontSize: 12),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 15),alignment: Alignment.topLeft,  child:Text('8.80', style: TextStyle(fontFamily: "Nunito",fontSize: 12, color: Colors.orange),)),
            ]),
          ),
          Expanded(
            flex: 1,
            child: Container( 
            width: 10,
            height: 50,
            padding: const EdgeInsets.fromLTRB(2, 1, 1, 5),          
            child:  IconButton(
              iconSize: 20,
            alignment: Alignment.topRight,
              icon: Icon(Icons.add),
              onPressed: (){
          _settingModalBottomSheet(context);
        },
            ),)),
        ]),
      ),
    
                  
                          ),
                          ),                      
                  ],
                ),              
              ),            
             new Container( 
                padding: const EdgeInsets.all(10),   
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,                  
                  children: <Widget>[   
                    new Container( 
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),  
                      // height: 40,
                      color:Color(0xfff5f0e3),
                      child: Text("Popular Dishes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),),             
                  new Container(
                  width:MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top:10),         
                  child: new Card(            
                    child:  IntrinsicHeight(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 3,
            child: Column(children:  [
              Container( padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),alignment: Alignment.topLeft, child: Text('Pizza Bread', textAlign:TextAlign.start,style: TextStyle(fontFamily: "Nunito",fontSize: 18, fontWeight: FontWeight.w500),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),child:Text('All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.', style: TextStyle(fontFamily: "Nunito",fontSize: 12),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 5),alignment: Alignment.topLeft, child:Text('Choice: Milk, coffee', style: TextStyle(fontFamily: "Nunito",fontSize: 12),)),
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 15),alignment: Alignment.topLeft,  child:Text('8.80', style: TextStyle(fontFamily: "Nunito",fontSize: 12, color: Colors.orange),)),
            ]),
          ),
          Expanded(
            flex: 1,
            child: Container( 
            width: 10,
            height: 50,
            padding: const EdgeInsets.fromLTRB(2, 1, 1, 5),            
            child:  IconButton(
              iconSize: 20,
            alignment: Alignment.topRight,
              icon: Icon(Icons.add),
              onPressed: (){
          _settingModalBottomSheet(context);
        },
            ),)),
        ]),
      ),   
                          ),
                          ),                      
                  ],
                ),              
              ),          
            ],
            ),
          
          ),
          
        ),
      ),
    );
  }
}






