import 'package:flutter/material.dart';
import 'package:flutterapp4/main_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:image_ink_well/image_ink_well.dart';
import '../screens/map_screen.dart';
//import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';

class NosotrosScreen extends StatelessWidget {

  static const routeName = './nosotros';

  @override

  Widget build(BuildContext context){

    Widget image_carousel = new Container(
      height: 200,
      child: Carousel(
          boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/logo.jpg'),
          AssetImage('images/carousel/office.jpg'),
          AssetImage('images/carousel/tours.jpg'),
          AssetImage('images/carousel/travel01.jpg'),
          AssetImage('images/carousel/universal.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 400),
        dotSize: 4,
        dotColor: Colors.blue,
        indicatorBgPadding: 4,
      ),
    );


    Widget buildTitleText (String title){
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      );
    }

    Widget buildBodyText(String title){
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      );
    }



    /*void whatAppOpen() async {
      await FlutterLaunch.launchWathsApp(
          phone: "+50257177167", message: "Hola me interesa el siguiente platillo o servicio:");
    }*/

    void launchFacebook() async {
      const url = 'https://www.facebook.com/pages/category/Education/Cineanimacion-159312350862535/';
      if(await canLaunch((url))){
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar (
        title: Text('Nosotros'),
      ),
      drawer: MainDrawer(),
      body: ListView(
        children: <Widget>[
          image_carousel,
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTitleText('Contacto'),
              buildBodyText('Av. Guatemala 885 Col. Molina'),
              buildBodyText('Telefono: 555555555'),
              buildBodyText('Mail: jchacon@gmail.com'),
              buildTitleText('Redes Sociales'),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: (){
                         // whatAppOpen();
                          print ('Whatsapp pressed');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.green[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Whatsapp',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: (){
                          launchFacebook();
                          print ('Facebook pressed');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Facebook',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              buildBodyText('Ubicacion'),
              InkWell(

                child: ImageInkWell(
                  onPressed: (){
                     Navigator.of(context).pushNamed(MapScreen.routeName);
                  },
                  height: 250,
                  width: double.infinity,
                  image: AssetImage('images/direccion01.jpg'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}