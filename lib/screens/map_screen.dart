import 'package:flutter/material.dart';
import '../main_drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {

  static const routeName =  './map';

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>{

  List<Marker> allMarkers = [];

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    allMarkers.add(Marker(
        markerId: MarkerId('Ubicacion'),
        draggable: false,
        onTap: (){
          print('Marker Tapped');
        },
        position: LatLng(14.835019, -91.500090)
    ));
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(14.835019, -91.500090),
              zoom: 12
            ),
            markers: Set.from(allMarkers),
          ),
        ),
      ),
    );
  }
}