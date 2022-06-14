import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppNotas extends StatelessWidget {
  AppNotas({Key? key}) : super(key: key);

  // Variables
  final nota = TextEditingController(); // Valor Campo Nota
  final porcentajeNota = TextEditingController(); // Valor Campo Porcentaje
  double resultadoNota = 0; // Resultado para el calculo de la nota
  num refNota = 0; // Resultado referencia de la nota

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calcular Notas'),),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Calcular Notas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center
              ),
              TextField(
                controller: nota,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese su Calificación'
                ),
              ),
              TextField(
                controller: porcentajeNota,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese El Porcentaje de la Evaluación'
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  // Validaciones de que si un campo está vacio tome el valor 0
                  nota.text.isEmpty ? nota.text = '0' : nota.text;
                  porcentajeNota.text.isEmpty ? porcentajeNota.text = '0' : porcentajeNota.text;

                  // Operación regla de 3
                  // 100% ---------> nota1    nota2 = (porcentaje*nota1)/100
                  // porcentaje ---> ¿nota2?
                  resultadoNota = double.parse(nota.text)*(double.parse(porcentajeNota.text)) / 100 ;
                  // Referencia:
                  // Una calificación de 20pts es el 100%, es decir cada 5% es 1 pt
                  refNota = (num.parse(porcentajeNota.text)) / 5;

                  // Mostrar Resultado
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Nota'),
                        content: Text('Su calificacion es: $resultadoNota / $refNota pts')
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