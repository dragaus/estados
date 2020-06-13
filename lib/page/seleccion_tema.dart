import 'package:flutter/material.dart';
import '../models/tema.dart';

class SeleccionTema extends StatelessWidget {
  final Function cambiarColor;
  final Tema tema;
  SeleccionTema(this.tema, this.cambiarColor);

  //Hago una tarjeta estilizada para poder mostrar los posibles temas
  //Recive el contexto del app y el index para obtener un tema
  Widget _cartaTema(BuildContext context, int index) {
    var colores = tema.coloresSelecionados(index);
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Card(
        color: colores[0],
        child: FloatingActionButton(
          onPressed: () => cambiarColor(index),
          heroTag: index,
          child: Icon(Icons.check),
          backgroundColor: colores[1],
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seleccciona el tema')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              _cartaTema(context, 0),
              _cartaTema(context, 1),
              _cartaTema(context, 2),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.pets),
      ),
    );
  }
}
