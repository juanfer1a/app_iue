import 'package:app_iue/widgets/datos_login.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 5,
          // ),
          Center(child: textBienvenida()),
          Center(child: textLogin()),
          const SizedBox(
            height: 5,
          ),
          const Datos(),
        ],
      ),
    );
  }

  Text textBienvenida() {
    return const Text(
      'Bienvenido a IUE',
      style: TextStyle(
          color: Color.fromARGB(255, 141, 71, 5),
          fontWeight: FontWeight.bold,
          fontSize: 25,
          letterSpacing: 1.5),
    );
  }

  Text textLogin() {
    return const Text(
      'Login',
      style: TextStyle(
          color: Color.fromARGB(255, 141, 71, 5),
          fontWeight: FontWeight.bold,
          fontSize: 25,
          letterSpacing: 1.5),
    );
  }
}
