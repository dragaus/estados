import 'package:flutter/material.dart';

class Tema {
  //Hago una lista con mis colores principales
  List<Color> _principales = [Colors.red, Colors.purple, Colors.yellow];
  //Hago una lista con mis colores secundarios
  List<Color> _secundarios = [Colors.blue, Colors.green, Colors.pink];

  //Regreso una lista de colores con el tema establecido en el index
  List<Color> coloresSelecionados (int index) {
    return [_principales[index], _secundarios[index]];
  }
}