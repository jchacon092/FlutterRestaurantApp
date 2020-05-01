import 'package:flutter/material.dart';
import 'package:flutterapp4/screens/categories_screen.dart';
import 'package:flutterapp4/screens/direcciones_screen.dart';
import 'package:flutterapp4/screens/nosotros_screen.dart';
import 'package:flutterapp4/screens/promociones_screen.dart';
import './screens/home_screen.dart';
import './screens/category_travels_screen.dart';


class MainDrawer extends StatelessWidget{

  Widget buildListTitle (String title, IconData icon, Function tapHandler){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Italian Resturant',
              style:  TextStyle(
              fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox (
            height: 20,
          ),

          buildListTitle('Menu', Icons.restaurant_menu, (){
            Navigator.of(context).pushNamed(CategoriesScreen.routeName);
          }),
          buildListTitle('Direcciones', Icons.motorcycle , (){
            Navigator.of(context).pushNamed(DireccionesScreen.routeName);
          }),
          buildListTitle('Nosotros', Icons.group, (){
            Navigator.of(context).pushNamed(NosotrosScreen.routeName);
          }),
          buildListTitle('Promociones', Icons.redeem, (){
            Navigator.of(context).pushNamed(PromocionesScreen.routeName);
          }),
          buildListTitle('Cerrar Sesion', Icons.exit_to_app, (){
            Navigator.of(context).pushNamed(HomePageScreen.routeName);
          }),
        ],
      ),
    );
  }
}