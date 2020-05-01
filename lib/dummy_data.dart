import 'package:flutter/material.dart';
import './models/category.dart';
import './models/travel.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'a1', title: 'Pastas', catImage: 'images/cat_images/playa.jpg'),
  Category(id: 'a2', title: 'Pizza', catImage: 'images/cat_images/europa.jpg'),
  Category(id: 'a3', title: 'Lasaña', catImage: 'images/cat_images/luna_miel.jpg'),
  Category(id: 'a4', title: 'Mariscos', catImage: 'images/cat_images/crucero.jpg'),
  Category(id: 'a5', title: 'Ensaladas', catImage: 'images/cat_images/hoteles.jpg'),
  Category(id: 'a6', title: 'Paninis', catImage: 'images/cat_images/avion.jpg'),
  Category(id: 'a7', title: 'Vinos', catImage: 'images/cat_images/disney.jpg'),
  Category(id: 'a8', title: 'Entradas', catImage: 'images/cat_images/paquetes.jpg'),
];

const DUMMY_TRAVELS = const [
  Travel(
    id: 'p1',
    categories: ['a1'],
    title: 'Fetuccini Napoles',
    priceTable: [
      "Q90.00 el platillo",
      "Especial para acompañar con vino tinto incluye ensalada",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/playas/cabos.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'p2',
    categories: ['a1'],
    title: 'Trennete al pesto',
    priceTable: [
      "Q.100.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Costoso,
    planes: Planes.TodoIncluido,
    image: 'images/playas/cancun.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'p3',
    categories: ['a1'],
    title: 'Liguria',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/playas/mazatlan.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'p4',
    categories: ['a1'],
    title: 'Spaguetti bolonia',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/playas/playaDelCarmen.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'p5',
    categories: ['a1'],
    title: 'Vermicelli',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/playas/puertoVallarta.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'p6',
    categories: ['a1'],
    title: 'Bucatini roma',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/playas/tulum.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'e1',
    categories: ['a2'],
    title: 'Margherita',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/europa/estambul.jpg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'e2',
    categories: ['a2'],
    title: 'Carbonara',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/europa/londres.png',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
  Travel(
    id: 'e3',
    categories: ['a2'],
    title: 'Marinara',
    priceTable: [
      "Q.85.00 el platillo acompañado de ensalada y guarnicion",
      "Puedes agregarle:",
    ],
    accesibilidad: Accesibilidad.Medio,
    planes: Planes.DesayunosIncluidos,
    image: 'images/europa/paris.jpeg',
    description: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
      'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
      'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo ',
      'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ',
      'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat',
      ' non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ),
];
