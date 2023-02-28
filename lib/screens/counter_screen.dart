import 'package:flutter/material.dart';

class CounterScreeen extends StatefulWidget {
  const CounterScreeen({super.key});

  @override
  State<CounterScreeen> createState() => _CounterScreeenState();
}

//Clase privada
class _CounterScreeenState extends State<CounterScreeen> {
  int contador1 = 0;
  int contador2 = 0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 241, 246, 247),
    fontWeight: FontWeight.bold,
  );
  int multiplicar() {
    return contador1 * contador2;
  }

  void incrementarmultiplicando() {
    contador1++;
    setState(() {});
  }

  void decrementarMultiplicando() {
    contador1--;
    setState(() {});
  }

  void reiniciarMultiplicando() {
    contador1 = 0;
    setState(() {});
  }

  void incrementarmultiplicador() {
    contador2++;
    setState(() {});
  }

  void decrementarMultiplicador() {
    contador2--;
    setState(() {});
  }

  void reiniciarMultiplicador() {
    contador2 = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(223, 13, 224, 231),
        title: const Text('Multiplicador'),
        centerTitle: true,
        elevation: 10,
      ),
      backgroundColor: const Color.fromARGB(255, 212, 109, 11),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Multiplicando: ', style: estiloTexto),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => decrementarMultiplicando(),
                  backgroundColor: const Color.fromARGB(223, 13, 224, 231),
                  foregroundColor: const Color.fromARGB(255, 240, 240, 243),
                  child: const Icon(Icons.exposure_minus_1),
                ),
                FloatingActionButton(
                  onPressed: () => reiniciarMultiplicando(),
                  backgroundColor: const Color.fromARGB(223, 25, 242, 250),
                  foregroundColor: const Color.fromARGB(255, 240, 237, 237),
                  child: const Icon(Icons.restart_alt),
                ),
                FloatingActionButton(
                  onPressed: () => incrementarmultiplicando(),
                  backgroundColor: const Color.fromARGB(223, 25, 242, 250),
                  foregroundColor: const Color.fromARGB(255, 242, 242, 243),
                  child: const Icon(Icons.exposure_plus_1),
                ),
              ],
            ),
            Text(
              '$contador1',
              style: estiloTexto,
            ),
            Text('Multiplicandor: ', style: estiloTexto),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => decrementarMultiplicador(),
                  backgroundColor: const Color.fromARGB(223, 13, 224, 231),
                  foregroundColor: const Color.fromARGB(255, 240, 240, 243),
                  child: const Icon(Icons.exposure_minus_1),
                ),
                // const SizedBox(
                FloatingActionButton(
                  onPressed: () => reiniciarMultiplicador(),
                  backgroundColor: const Color.fromARGB(223, 25, 242, 250),
                  foregroundColor: const Color.fromARGB(255, 240, 237, 237),
                  child: const Icon(Icons.restart_alt),
                ),
                FloatingActionButton(
                  onPressed: () => incrementarmultiplicador(),
                  backgroundColor: const Color.fromARGB(223, 25, 242, 250),
                  foregroundColor: const Color.fromARGB(255, 242, 242, 243),
                  child: const Icon(Icons.exposure_plus_1),
                ),
              ],
            ),
            Text('$contador2', style: estiloTexto),
            Text('Resultado de la multiplicacion:  ${multiplicar()}',
                style: estiloTexto),
          ],
        ),
      ),
    );
  }
}
