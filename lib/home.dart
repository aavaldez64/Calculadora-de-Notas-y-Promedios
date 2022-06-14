import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplicaciones Móviles IC0912'),),
      body: const MenuPrincipal()
    );
  }
}

// Pantalla Menú Principal
class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(240, 240, 240, 1), // Color del Fondo
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Calculadora de Promedios y Notas',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/appNotas'); // Enlace a Notas
                },
                child: const Text('Calcular Notas'),
                ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/appPromedio'); // Enlace a Promedio
                },
                child: const Text('Calcular Promedio'),
                ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/developers'); // Enlace a Desarrolladores
                },
                child: const Text('Conoce a los Desarrolladores'),
                ),
          ],
        )
      ),
    );
  }
}