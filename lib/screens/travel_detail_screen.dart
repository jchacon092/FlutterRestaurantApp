import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp4/utilities/constants.dart';

class TravelDetailScreen extends StatelessWidget{

  Widget buildSectionTitle (BuildContext context, String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical:  10),
      child: Text (
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }
  Widget buildPriceContainer(Widget child){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 100,
      width: 350,
      child: child,
    );
  }

  Widget buildDescriptionContainer(Widget child){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 250,
      width: 350,
      child: child,
    );
  }

  Widget _buildRememberMeCheckbox(BuildContext context, String text) {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
              },
            ),
          ),
          Text(
            'Recordar',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget button2() {
    return Material(
      color: Colors.redAccent[400],
      borderRadius: BorderRadius.circular(30),
      child: InkWell(

        splashColor: Colors.white24,
        highlightColor: Colors.white10,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Center(
            child: Text(
              'Agregar orden',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          margin: EdgeInsets.all(10),
       //   padding: EdgeInsets.all(10),
          height: 41,
          width: 155,

        ),

      ),
    );
  }

  static const routeName = './travel-detail';

  @override
  Widget build(BuildContext context)
  {
    final travelId = ModalRoute.of(context).settings.arguments as String;
    final selectedTravel = DUMMY_TRAVELS.firstWhere((travel) =>travel.id == travelId);


    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTravel.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selectedTravel.image,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Platillo'),
            buildPriceContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).primaryColorDark,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      selectedTravel.priceTable[index],
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),

                  ),

                ),
                itemCount: selectedTravel.priceTable.length,
              ),
            ),

            buildSectionTitle(context, 'Extras'),
            buildDescriptionContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('# ${(index + 1)}'),
                  ),
                  title: Text(
                    selectedTravel.description[index],
                  ),
                ),
                itemCount: selectedTravel.description.length,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            button2(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}