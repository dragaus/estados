import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/color_de_huella.dart';

class HuellaColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorHuella = Provider.of<ColorDeHuella>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.pets,
              color: colorHuella.obtenerColor,
            ),
            RaisedButton(
              onPressed: () {
                colorHuella.actualizarColor(Colors.green);
              },
              color: Colors.green,
              child: Icon(Icons.update),
            ),
            RaisedButton(
              onPressed: () {
                colorHuella.actualizarColor(Colors.red);
              },
              color: Colors.red,
              child: Icon(Icons.update),
            ),
          ],
        ),
      ),
    );
  }
}
