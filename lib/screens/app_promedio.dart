import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppPromedio extends StatelessWidget {
  AppPromedio({Key? key}) : super(key: key);

  // Variable
  final nota1 = TextEditingController();  // Valor campo nota1
  final porcentaje1 = TextEditingController(); // Valor campo porcentaje1
  final nota2 = TextEditingController(); // Valor campo nota2
  final porcentaje2 = TextEditingController(); // Valor campo porcentaje2
  final nota3 = TextEditingController(); // Valor campo nota3
  final porcentaje3 = TextEditingController(); // Valor campo porcentaje3
  double resultadoCorte1 = 0; // Resultado del corte 1
  double resultadoCorte2 = 0; // Resultado del corte 2
  double resultadoCorte3 = 0; // Resultado del corte 3
  double resultadoPromedio = 0; // Suma de todos los Cortes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calcular Promedios')),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Calcular Promedio',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center
              ),
              TextField(
                controller: nota1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese Calificación 1'
                ),
              ),
              TextField(
                controller: porcentaje1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese Porcentaje del Corte 1'
                ),
              ),
              TextField(
                controller: nota2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese Calificación 2'
                ),
              ),
              TextField(
                controller: porcentaje2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese Porcentaje del Corte 2'
                ),
              ),
              TextField(
                controller: nota3,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese Calificación 3'
                ),
              ),
              TextField(
                controller: porcentaje3,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese Porcentaje del Corte 3'
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  // Validaciones de que si un campo esté vacio tome el valor 0
                  nota1.text.isEmpty ? nota1.text = '0' : nota1.text;
                  porcentaje1.text.isEmpty ? porcentaje1.text='20' : porcentaje1.text;
                  nota2.text.isEmpty ? nota2.text = '0' : nota2.text;
                  porcentaje2.text.isEmpty ? porcentaje2.text='40' : porcentaje2.text;
                  nota3.text.isEmpty ? nota3.text = '0' : nota3.text;
                  porcentaje3.text.isEmpty ? porcentaje3.text='40' : porcentaje3.text;

                  // Operación regla de 3 para cada corte
                  resultadoCorte1 = double.parse(nota1.text)*(double.parse(porcentaje1.text)) / 100 ;
                  resultadoCorte2 = double.parse(nota2.text)*(double.parse(porcentaje2.text)) / 100 ;
                  resultadoCorte3 = double.parse(nota3.text)*(double.parse(porcentaje3.text)) / 100 ;
                  // Suma de los 3 cortes
                  resultadoPromedio = resultadoCorte1 + resultadoCorte2 + resultadoCorte3 ;

                  // Mostrar resultado
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Promedio'),
                        content: Text('Su promedio final es: $resultadoPromedio pts')
                      );
                    }
                  );
                  },
                child: const Text('Calcular'),
              )
            ],
          )
        ),
      ),
    );
  }
}