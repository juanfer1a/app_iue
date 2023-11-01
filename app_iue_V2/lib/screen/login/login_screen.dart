
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
      ),
    );
  }
}