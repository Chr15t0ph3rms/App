import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  static const Map<String, String> perros = {
    'Scooby': 'assets/imgs/perro1.jpg',
    'Nieve': 'assets/imgs/perro2.jpg',
    'Solo vino': 'assets/imgs/perro3.jpg',
    'Balto': 'assets/imgs/perro4.jpg',
    'Gordo': 'assets/imgs/perro5.jpg',
  };

  static const Map<String, String> gatos = {
    'Benito Bodoque': 'assets/imgs/gato1.jpg',
    'Cucho': 'assets/imgs/gato2.jpg',
    'Demóstenes': 'assets/imgs/gato3.jpg',
    'Espanto': 'assets/imgs/gato4.jpg',
    'Panza': 'assets/imgs/gato5.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ...perros.entries.map(
            (perro) => crearTile(
              context,
              perro.key,
              perro.value,
              'Un lindo perrito',
              Colors.purple,
              Colors.white,
            ),
          ),
          const Divider(),
          ...gatos.entries.map(
            (gato) => crearTile(
              context,
              gato.key,
              gato.value,
              'Un lindo gatito',
              Colors.blue,
              Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

Widget crearTile(
  BuildContext context,
  String nombre,
  String imagen,
  String subtitulo,
  Color colorFile,
  Color colorText,
) {
  final tile = ListTile(
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(imagen, width: 50, height: 50, fit: BoxFit.cover),
    ),
    title: Text(nombre),
    subtitle: Text(subtitulo),
    trailing: const Icon(Icons.close),
    tileColor: colorFile,
    textColor: colorText,
    iconColor: colorText,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text(nombre),
            content: Image.asset(
              imagen,
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: const Text('Cerrar'),
              ),
            ],
          );
        },
      );
    },
  );

  return Column(children: [tile, const SizedBox(height: 4)]);
}
