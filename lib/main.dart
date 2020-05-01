import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp4/screens/direcciones_screen.dart';
import 'package:flutterapp4/screens/registro_screen.dart';
import 'package:flutterapp4/screens/travel_detail_screen.dart';
import './screens/home_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_travels_screen.dart';
import './screens/travel_detail_screen.dart';
import './screens/nosotros_screen.dart';
import './screens/promociones_screen.dart';
import './screens/map_screen.dart';
import 'package:flutterapp4/screens/login_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]
    );


    return MaterialApp(
      title: 'Restaurante App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        accentColor: Colors.red,
        canvasColor: Color.fromRGBO(230, 255, 252, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(21, 51, 51, 1),
          ),
          title:  TextStyle(
            fontSize: 15,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
      initialRoute: './home-screen',
      routes: {
        HomePageScreen.routeName: (ctx) => HomePageScreen(),
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        CategoryTravelsScreen.routeName: (ctx) => CategoryTravelsScreen(),
        TravelDetailScreen.routeName: (ctx) => TravelDetailScreen(),
        NosotrosScreen.routeName: (ctx) => NosotrosScreen(),
        PromocionesScreen.routeName: (ctx) => PromocionesScreen(),
        MapScreen.routeName: (ctx) => MapScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        RegistroScreen.routeName: (ctx) => RegistroScreen(),
        DireccionesScreen.routeName: (ctx) => DireccionesScreen(),
      },

      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) =>HomePageScreen());
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => HomePageScreen());
      },
    );
  }
}
