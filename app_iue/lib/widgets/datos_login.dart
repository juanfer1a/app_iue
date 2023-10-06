import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  final textControllerMail = TextEditingController();
  final textControllerPassword = TextEditingController();
  String textFieldValueMail = '';
  String textFieldValuePassword = '';

  @override
  void dispose() {
    // Importante: liberar recursos del controlador cuando el widget se descarte.
    textControllerMail.dispose();
    textControllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textDatos('Email'),
          const SizedBox(),
          TextFormField(
            controller: textControllerMail,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'email@correo.iue.edu.co'),
            // onEditingComplete: () {
            //   setState(() {
            //     textFieldValueMail = textControllerMail.text;
            //     print('Mail: $textFieldValueMail');
            //   });
            // },
            onChanged: (value) {
              setState(() {
                textFieldValueMail = value;
              });
              print(textFieldValueMail);
            },
          ),
          const SizedBox(),
          textDatos('Password'),
          const SizedBox(),
          TextFormField(
            controller: textControllerPassword,
            obscureText: obs,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Contraseña',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {
                    setState(() {
                      obs == true ? obs = true : obs = false;
                    });
                  },
                )),
            // onEditingComplete: () {
            //   setState(() {
            //     textFieldValuePassword = textControllerPassword.text;
            //     print('password $textFieldValuePassword');
            //   }
            //   );
            // },
            onChanged: (value) {
              setState(() {
                textFieldValuePassword = value;
              });

              print(textFieldValuePassword);
            },
          ),
          const Remember(),
          const SizedBox(
            height: 10,
          ),
          Botones(email: textFieldValueMail, password: textFieldValuePassword),
          Text('Mail $textFieldValueMail'),
          Text('Password $textFieldValuePassword')
        ],
      ),
    );
  }

  Text textDatos(String text) {
    String texto = text;

    return Text(
      texto,
      style: const TextStyle(
          color: Color.fromARGB(255, 40, 40, 35),
          fontWeight: FontWeight.bold,
          fontSize: 25),
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: valor,
          onChanged: (value) {
            setState(() {
              valor == false ? valor = true : valor = false;
            });
          },
        ),
        const Text('Recordarme',
            style: TextStyle(
              color: Color.fromARGB(255, 141, 71, 5),
            )),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text('¿Recordar contraseña?'),
        ),
      ],
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({super.key, required this.email, required this.password});

  final String email;
  final String password;

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if (widget.email == 'sebas@correo.com' &&
                  widget.password == '12345') context.go('/menu');
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 169, 145, 78))),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white70, fontSize: 20),
            ),
          ),
        ),
        // const SizedBox(
        //   height: 25,
        //   width: double.infinity,
        // ),
        // const Text('O'),
        // const SizedBox(),
        // Container()
      ],
    );
  }
}
