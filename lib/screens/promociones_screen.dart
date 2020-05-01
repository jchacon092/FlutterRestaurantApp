import 'package:flutter/material.dart';
import 'package:flutterapp4/main_drawer.dart';

class PromoList extends StatelessWidget {

  final String image;
  PromoList({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(children: <Widget>[
          Image.asset(image)
        ],),
      ),
    );
  }
}

class PromocionesScreen extends StatelessWidget {

static const routeName = './promociones';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Promociones'),
    ),
    drawer: MainDrawer(),
    body: ListView(
      children: <Widget>[
        PromoList(image: 'images/promo/springbreak.jpg',),
        PromoList(image: 'images/promo/skate.jpg',),
        PromoList(image: 'images/promo/charterCarretero.jpg',),
      ],
    ),
  );
}
}
