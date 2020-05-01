import 'package:flutter/material.dart';
import 'package:flutterapp4/screens/login_screen.dart';
import 'package:flutterapp4/screens/registro_screen.dart';
import '../screens/categories_screen.dart';

class HomePageScreen extends StatefulWidget {
  static const routeName = './home-screen';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  selectRegistro(BuildContext context) {
    Navigator.of(context).pushNamed(RegistroScreen.routeName);
  }

  selectLogin(BuildContext context) {
    Navigator.of(context).pushNamed(LoginScreen.routeName);
  }

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  final background = Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/homeImage.jpg'), fit: BoxFit.cover)),
  );

  final whiteOpacity = Container(
    color: Colors.white54,
  );

  final description = Text(
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.redAccent[700],
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontStyle: FontStyle.italic,
    ),
  );

  Widget button(String label, Function onTap) {
    return Material(
      color: Colors.green[600],
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white24,
        highlightColor: Colors.white10,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget button2(String label, Function onTap) {
    return Material(
      color: Colors.green[900],
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white24,
        highlightColor: Colors.white10,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final logo = ScaleTransition(
      scale: animation,
      child: Image.asset(
        'images/logoTravel.png',
        width: 200,
        height: 200,
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background,
          whiteOpacity,
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  logo,
                  SizedBox(
                    height: 30,
                  ),
                  description,
                  SizedBox(
                    height: 50,
                  ),
                  button('Inicia sesion', () => selectLogin(context)),
                  SizedBox(
                    height: 25,
                  ),
                  button2('Registrate!', () => selectRegistro(context)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
