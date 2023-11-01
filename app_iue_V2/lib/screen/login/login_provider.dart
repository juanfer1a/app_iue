import 'package:appuenvigado/screen/home/home_screen.dart';
import 'package:appuenvigado/screen/shared/nav/nav_screen.dart';
import 'package:appuenvigado/service/alert_service.dart';
import 'package:flutter/material.dart';

import '../work/work_screen.dart';

class LoginProvider extends ChangeNotifier{

  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  getLogin(BuildContext context){
    
    Alert alert = Alert(context);

    if(user.text!="" && password.text!="" )
    {
       Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>  const HomeScreen(),
          ));

    }else{
      alert.showAlertDialog("Advertencia", "Usuario o contraseña incorrectos");
    }

  }
 


}