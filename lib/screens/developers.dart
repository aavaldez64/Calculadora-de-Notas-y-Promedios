import 'package:flutter/material.dart';

class DevelopersPage extends StatelessWidget {
  const DevelopersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desarrolladores de la App'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Desarrolladores de la App',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 20, 70, 10),
                child: Column(
                  children: [
                    Image.asset('assets/developer_aaron.jpg'),
                    const Text('Aarón Valdez'),
                    const Text('28.473.445'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                child: Column(
                  children: [
                    Image.asset('assets/developer_carla.jpg'),
                    const Text('Carla Rodríguez'),
                    const Text('30.060.616'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                child: Column(
                  children: [
                    Image.asset('assets/developer_jean.jpg'),
                    const Text('Jean García'),
                    const Text('28.473.905'),
                  ],
                ),
              ),
              
            ],
          ),
        )
      ),
    );
  }
}