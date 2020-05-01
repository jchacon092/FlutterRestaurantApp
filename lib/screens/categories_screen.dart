import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../category_item.dart';
import '../main_drawer.dart';

class CategoriesScreen extends StatelessWidget {

  static const routeName = './categories-screen';


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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios'),
      ),
      drawer: MainDrawer(
      ),
      body: GridView(

        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map(
              (catData) => CategoryItem(
                catData.id,
              catData.title,
              catData.catImage
          ),
        )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),

    );

  }
}
