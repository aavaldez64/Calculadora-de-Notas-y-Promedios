import 'package:aplicaciones_moviles_uniojeda/home.dart'; // Pantalla Principal
import 'package:aplicaciones_moviles_uniojeda/screens/app_notas.dart'; // Pantalla Notas
import 'package:aplicaciones_moviles_uniojeda/screens/app_promedio.dart'; // Pantalla Promedios
import 'package:aplicaciones_moviles_uniojeda/screens/developers.dart'; // Pantalla Desarrolladores
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto App Móviles',
      theme: ThemeData(primarySwatch: Colors.blueGrey,), // Color del AppBar
      initialRoute: '/',
      routes: {
        '/':(context) => const Home(), // Ruta de Pantalla Inicial
        '/appNotas':(context) => AppNotas(), // Ruta de Calcular Notas
        '/appPromedio':(context) => AppPromedio(), // Ruta de Calcular Promedio
        '/developers':(context) => const DevelopersPage(), // Ruta de Desarrolladores
      },
    );
  }
}