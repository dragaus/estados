import 'package:estados/models/tema.dart';
import 'package:estados/providers/color_de_huella.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

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
  SharedPreferences prefs;
  Color colorDeIcono = Colors.amber;

  //Nos va a servir para poder guardar nuestras prefrencias
  Future<void> iniciarPreferencias() async {
    prefs = await SharedPreferences.getInstance();
    var index = prefs.getInt('indexTema');
    print(index);
    setState(() {
      indexTema = index != null ? index : 1;
    });
  }

  @override
  void initState() {
    super.initState();
    iniciarPreferencias();
  }

  Future<void> cambiarTema(index) async {
    setState(() {
      indexTema = index;
    });
    await prefs.setInt('indexTema', index);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ColorDeHuella(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: tema.coloresSelecionados(indexTema)[0],
          accentColor: tema.coloresSelecionados(indexTema)[1],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SeleccionTema(tema, cambiarTema),
      ),
    );
  }
}
