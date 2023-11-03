import 'package:appuenvigado/screen/work/work_screen.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<String> image = [];

  addImage(String img, BuildContext context) async {
    //image.add(img);
    // ignore: unused_local_variable
    final datosRecibidos = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WorkScreen(img),
      ),
    );

    notifyListeners();
  }
}
