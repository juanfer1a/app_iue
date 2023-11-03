import 'package:appuenvigado/screen/home/home_screen.dart';
import 'package:appuenvigado/service/alert_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  getLogin(BuildContext context) async {
    Alert alert = Alert(context);

    if (user.text != "" && password.text != "") {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: user.text,
          password: password.text,
        );

        // El inicio de sesión fue exitoso, userCredential.user contiene la información del usuario.
        if (userCredential.user != null) {
          // ignore: use_build_context_synchronously
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
          // Procede con las acciones posteriores al inicio de sesión.
        } else {
          alert.showAlertDialog(
              "Advertencia", "Usuario o contraseña incorrectos");
        }
      } catch (e) {
        alert.showAlertDialog("Advertencia", "$e");
      }
    } else {
      alert.showAlertDialog("Advertencia", "Los campos estan vacios");
    }
  }
}
