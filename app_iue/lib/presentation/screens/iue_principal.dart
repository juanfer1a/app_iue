import 'package:flutter/material.dart';

class IueScreen extends StatelessWidget {
  const IueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IUE',
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                '\lib\img\Mesa de trabajo 1.png'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Ajustar la imagen al tamaño del contenedor
          ),
        ),
        child: const Center(
          child: Text(
            'Contenido en el fondo de imagen',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white, // Color del texto en el fondo
            ),
          ),
        ),
      ),
    );
  }
}
