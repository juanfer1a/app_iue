import 'package:appuenvigado/screen/home/home_screen.dart';
import 'package:appuenvigado/screen/imagen_fondo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginProvider loginProvider = LoginProvider();

  @override
  Widget build(BuildContext context) {
    loginProvider = context.watch<LoginProvider>();

    return Scaffold(
      body: Stack(
        children: [
          const ImagenFondo(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Bienvenido a IUE',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: loginProvider.user,
                    decoration: const InputDecoration(
                      labelText: 'Usuario',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true, // Para contraseñas
                    controller: loginProvider.password,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const HomeScreen()));
                      loginProvider.getLogin(context);
                      // Aquí puedes agregar la lógica para manejar el inicio de sesión
                    },
                    child: const Text("Ingresar"),
                    //color: Colors.blue,
                    //textColor: Colors.white,
                    //child: Text("Ingresar"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
