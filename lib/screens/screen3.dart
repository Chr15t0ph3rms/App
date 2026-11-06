import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colocarImagen(1),
            SizedBox(width: 4),
            colocarImagen(2),
            SizedBox(width: 4),
            colocarImagen(3),
          ],
        ),
      ),
    );
  }

  Widget colocarImagen(int numImagen) {
    String imagen = '';
    switch (numImagen) {
      case 1:
        imagen = 'assets/imgs/cachorro1.jpg';
        break;
      case 2:
        imagen = 'assets/imgs/cachorro2.jpg';
        break;
      case 3:
        imagen = 'assets/imgs/cachorro3.jpg';
        break;
    }
    return Image.asset(imagen, width: 120, height: 120, fit: BoxFit.contain);
  }
}
