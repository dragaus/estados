import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ColorDeHuella with ChangeNotifier {
  //Se pone privado para modificarse solo dentro de este script
  // y evitar errores
  Color _colorHuella = Colors.pink;

  // Genero un valor protegido contra escritura
  Color get obtenerColor {
    return _colorHuella;
  }

  void actualizarColor(Color colorNuevo){
    _colorHuella = colorNuevo;
    notifyListeners();
  }
}