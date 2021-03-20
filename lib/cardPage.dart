import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart';

import 'cardBloc.dart';

class CartPage extends StatelessWidget {
  CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    var cart = bloc.cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffefd1c4),
        title: Text("My Cart", style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          int giftIndex = cart.keys.toList()[index];
          int count = cart[giftIndex];
          return ListTile(
            leading: Container(
              margin: EdgeInsets.only(top:20),
              height: 70,
              width: 70,
                child: Text( 
              'Menu ${index + 1}',
              // style: Theme.of(context).textTheme.headline,
            ),
            ),
            title: Text('total item: $count'),
            trailing: RaisedButton(
              child: Text('delete'),
              color: Theme.of(context).buttonColor,
              elevation: 1.0,
              splashColor: Colors.blueGrey,
              onPressed: () {
                bloc.clear(giftIndex);
              },
            ),
          );
        },
      ),
    );
  }
}
