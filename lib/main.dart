import 'package:estados/models/tema.dart';
import 'package:flutter/material.dart';

import './page/seleccion_tema.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tema = Tema();
  int indexTema = 0;

  void cambiarTema(index){
    setState(() {
      indexTema = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: tema.coloresSelecionados(indexTema)[0],
        accentColor: tema.coloresSelecionados(indexTema)[1],
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SeleccionTema(tema, cambiarTema),
    );
  }
}