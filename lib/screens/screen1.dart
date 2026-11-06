import 'package:flutter/material.dart';
import 'package:proyecto1/screens/screen2.dart';
import 'package:proyecto1/screens/screen3.dart';
import 'package:proyecto1/screens/screen4.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text('Selecciona una opción:'),
            SizedBox(height: 20),
            boton(
              'Boton 1',
              const Color.fromARGB(255, 96, 143, 153),
              Screen2(),
              context,
            ),
            SizedBox(height: 20),
            boton(
              'Boton 2',
              const Color.fromARGB(255, 229, 72, 61),
              Screen3(),
              context,
            ),
            SizedBox(height: 20),
            boton(
              'Boton 3',
              const Color.fromARGB(255, 3, 84, 6),
              Screen4(),
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    StatelessWidget screen,
    BuildContext context,
  ) {
    return ElevatedButton(
      onPressed: () {
        // Abre otras pantallas  de la app
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: color1,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      child: Text(texto),
    );
  }
}
