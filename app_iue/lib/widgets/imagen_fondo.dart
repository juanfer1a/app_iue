import 'package:flutter/material.dart';

class ImagenFondo extends StatelessWidget {
  const ImagenFondo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('lib/images/fondo.png'), // Ruta de la imagen de fondo
          fit: BoxFit.cover,
          opacity: 1.5,
          // Ajustar la imagen al tamaño del contenedor
        ),
      ),
      //child: const Column(),
      // child: const Center(
      //   child: Text(
      //     'Contenido en el fondo de imagen',
      //     style: TextStyle(
      //       fontSize: 24,
      //       color: Colors.white, // Color del texto en el fondo
      //     ),
      //   ),
      // ),
    );
  }
}
