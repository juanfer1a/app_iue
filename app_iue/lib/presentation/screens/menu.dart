import 'package:app_iue/widgets/imagen_fondo.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return const Scaffold(
        // appBar: AppBar(
        //   //backgroundColor: Colors.orange,
        //   title: const Text(
        //     'IUE',
        //     style: TextStyle(color: Colors.red),
        //   ),
        //   centerTitle: true,
        // ),
        body: Stack(children: [
      ImagenFondo(),
    ]));
  }
}
