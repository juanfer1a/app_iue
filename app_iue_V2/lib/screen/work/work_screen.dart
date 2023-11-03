import 'dart:io';

import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  final String datosRecibidos;

  const WorkScreen(this.datosRecibidos, {super.key});

  //final imagen = Image.file(File(rutaImagen));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Muestra la imagen aquí con un tamaño específico.
            SizedBox(
              width: 200, // Ancho deseado
              height: 200, // Alto deseado
              child: Image.file(File(datosRecibidos)),
            ),

            // Puedes agregar más contenido según tus necesidades.
          ],
        ),
      ),
    );
  }
}
