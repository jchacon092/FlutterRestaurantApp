import 'package:flutter/foundation.dart';

enum Accesibilidad { Economico, Medio, Costoso }

enum Planes { TodoIncluido, DesayunosIncluidos, SoloHospedaje }

class Travel {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> priceTable;
  final List<String> description;
  final Accesibilidad accesibilidad;
  final Planes planes;
  final String image;

  const Travel({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.priceTable,
    @required this.description,
    @required this.accesibilidad,
    @required this.planes,
    @required this.image,
  });
}

