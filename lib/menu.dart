import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Cart.dart';
import 'dish_object.dart';
import 'form.dart';
// import 'restaurant.dart'; 
 
void main() => runApp(new MainMenu());

class MainMenu extends StatefulWidget { 
  @override
  State<StatefulWidget> createState() => new MyAppState();
}
 
class MyAppState extends State<MainMenu> {  
  String firstHalf;
  String secondHalf;
  bool flag = true;  
  String collapse = "We combine an improved baking process with premium ingredients. Our basic pizzas are pre-built and only filled with the ingredients at the perfect cooking point. Whether spinach calabrese or fresh mozzarella, here is something for everyone.";
  List<Dish> _dishes = List<Dish>();
    List<Dish> _cartList = List<Dish>();
  void _populateDishes() {
  var list = <Dish>[
    Dish(
      name: 'Chicken Zinger',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
      extra: ''
    ),
    Dish(
      name: 'Chicken Zinger without chicken',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
      extra: ''
    ),
    Dish(
      name: 'Rice',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
      extra: 'with Ketch-up',
    ),
    Dish(
      name: 'Beef burger without beef',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
      extra: ''
    ),
    Dish(
      name: 'Laptop without OS',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
      extra:''
    ),
    Dish(
      name: 'Mac wihout macOS',
      description: 'All with Gouda cheese and tomato sauce Pizza dough made from wheat flour.',
      choice : 'Milk, coffee',
      price: '0.80',
      extra:''
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
    if (collapse.length > 50) {
      firstHalf = collapse.substring(0, 80);
      secondHalf = collapse.substring(50, collapse.length);
    } else {
      firstHalf = collapse;
      secondHalf = "";
    }
    // fetchPost();
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
 
ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false, 
        home: new Scaffold(  
        resizeToAvoidBottomPadding: false,         
        body: ListView(
             padding: EdgeInsets.all(0),
             physics: const AlwaysScrollableScrollPhysics(), // new
          controller: _controller,
          children: [
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
            new Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[  
              Container(  
                child: new Image.asset("assets/images/pizza1.jpeg", fit: BoxFit.contain)),                           
              FractionalTranslation(
                translation: Offset(0.0, 0.5),
                child: Container(
                  decoration: new BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/the-ring.png"),
                  )),
                width: 120,
                height: 120,
              )),  
              // Stack(
              //   alignment: Alignment.topLeft,
              //   children: <Widget>[
              //   Positioned( // --> App Bar
              //   child: AppBar(
              //     backgroundColor: Colors.transparent,
              //     elevation: 0.0,
              //     leading: Padding( // --> Custom Back Button
              //       padding: const EdgeInsets.all(8.0),
              //       child: FloatingActionButton(
              //         backgroundColor: Colors.transparent,
              //         mini: true,
              //         // onPressed: Navigator.of(context).pop();
              //         child: Icon(Icons.arrow_back, color: Color(0xfff7f7f7)), onPressed: () {},
              //       ),
              //     ),
              //   ),
              // ), ])    
           ],) ,
            new Container(
             margin: EdgeInsets.only(top:80),  
             padding: EdgeInsets.all(10),
             child: Column(
              children: <Widget>[
                new Container(                
                alignment: Alignment.topLeft,
                child: Text(           
                  "Bollywood Indian restaurant",
                  textAlign: TextAlign.start,
                  style: TextStyle( 
                  fontFamily: "Nunito", 
                  fontWeight: FontWeight.w600,                 
                  fontSize: 20,))),                            
                new Container(
                padding: EdgeInsets.only(top: 10),
                  child: secondHalf.isEmpty  ? new Text(firstHalf) : 
                  new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Nunito",
                )),                  
                ),                    
                new InkWell(
                  child:  new Container(
                  //  transform: Matrix4.translationValues(0.0, -15.0, 0.0),
                  child :Row(                    
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        flag ? "Read more" : "Show less",
                        style: new TextStyle(color: Color(0xfffd8a3f), fontFamily: "Nunito",),
                      ),
                    ],
                  ),),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),            
              ],)),             
            new SizedBox(
              height:1000,
            child: new DefaultTabController(
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
                      child:    
                        Text("Popular Dishes", style: TextStyle(fontFamily: "Nunito",fontSize: 18, fontWeight: FontWeight.w400),), 
                  
            
                  ),
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
              Container( padding: const EdgeInsets.fromLTRB(20, 0, 10, 15),alignment: Alignment.topLeft,  child:Text(item.extra == null ? null : item.extra, style: TextStyle(fontFamily: "Nunito",fontSize: 12, color: Colors.orange),)),
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
                        color:Color(0xfffd8a3f),
                      )
                    : Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
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
      ),)
            ])           
        ],),
         
        floatingActionButton: _cartList.length > 0 ?  FloatingActionButton(
          isExtended: true,
          elevation: 50,
          backgroundColor: Color(0xfffd8a3f),
          hoverColor: Color(0xfffd8a3f),
          autofocus: true,
           onPressed: (){
          if (_cartList.isNotEmpty)
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Cart(_cartList),
        ),
      );
        },
        
          child: Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Icon(
        Icons.shopping_cart,
        size: 26.0,
      ),
      Text('Basket'),
      if (_cartList.length > 0)
        Padding(
          padding: const EdgeInsets.only(left: 20.0,bottom:20),
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
          tooltip: 'Pick Image',
        ) : Container(),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
           
    );
  }
}






