import 'package:flutter/material.dart';
import 'package:flutterapp4/travel_item.dart';
import '../dummy_data.dart';

class CategoryTravelsScreen extends StatelessWidget{

/*  final String categoryId;
  final String categoryTitle;*/

  static const routeName = './category-travels-screen';

  //CategoryTravelsScreen(this.categoryId, this.categoryTitle);



  @override
  Widget build (BuildContext context){
    final routeArgs =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryTravels = DUMMY_TRAVELS.where((travel) {
      return travel.categories.contains(categoryId);
    }).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index){
          return TravelItem(
              id: categoryTravels[index].id,
              title: categoryTravels[index].title,
              image: categoryTravels[index].image,
              accesibilidad: categoryTravels[index].accesibilidad,
              planes: categoryTravels[index].planes,);
        },
        itemCount: categoryTravels.length,)
    );
  }
}