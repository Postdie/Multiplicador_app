import 'package:flutter/material.dart';

class CounterScreeen extends StatefulWidget{
  const CounterScreeen({super.key});

  @override
  State<CounterScreeen> createState() => _CounterScreeenState();
}
//Clase privada
class _CounterScreeenState extends State<CounterScreeen> {
   int contador = 0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 241, 246, 247),
    fontWeight: FontWeight.bold,
  );
  void incrementar() {
    contador++;
    setState((){});
  }
  void decrementar() {
    contador--;
    setState((){});
  }
  void reiniciar() {
    contador = 0;
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
     
  return Scaffold(
    appBar: AppBar(
      backgroundColor:  Color.fromARGB(223, 13, 224, 231),
      title: const Text('PlantLink'),
      centerTitle: true,
      elevation: 10
      ,),
      backgroundColor: Color.fromARGB(255, 212, 109, 11),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Numero de visitas: ',
          style: estiloTexto),
          Text('$contador',
          style: estiloTexto,
          ),
        ],
      ),
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  floatingActionButton: CustomFloatingActionButtom(
  decrease: decrementar,
  increase: incrementar,
  reset: reiniciar,),
  );
}
}

class CustomFloatingActionButtom extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const CustomFloatingActionButtom({
    super.key, required this.increase, required this.decrease, required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed:() => decrease(),
          backgroundColor: Color.fromARGB(223, 13, 224, 231),
          foregroundColor: Color.fromARGB(255, 240, 240, 243),
          child: const Icon(Icons.exposure_minus_1),
          ),
         // const SizedBox(
//width: 30,
//),
          FloatingActionButton(
          onPressed: () => reset(), 
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 240, 237, 237),
          child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
          onPressed: () => increase(),
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 242, 242, 243),
          child: const Icon(Icons.exposure_plus_1),
          ),
      ],
    );
  }
}