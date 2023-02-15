import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  final TextStyle estiloTexto= const TextStyle(
    fontSize: 30,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    int contador=0;
    return Scaffold(
        appBar: AppBar(
          title: const Text('PlantLink'),
          elevation: 10,
          backgroundColor:  const Color.fromRGBO(225, 14, 3, 85)
        ),
        backgroundColor: Color.fromARGB(255, 212, 158, 8),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Numero de taps:',
                style: estiloTexto,
              ),
              Text(
                '$contador',
                style: estiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            contador++;
            print('Tocaste el , valor del contador:  $contador');
            //contador++;        
          },
          backgroundColor:Color.fromARGB(223, 17, 15, 13),
          foregroundColor:Color.fromARGB(0, 6, 219, 6),
          child: const Icon(Icons.add),
        ),
      );
  }
}