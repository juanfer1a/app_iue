import 'package:flutter/material.dart';

class Alert {
  late BuildContext _context;
  Alert(BuildContext context) {
    _context = context;
  }
  void showAlertDialog(String tittle, String text) {
    showDialog(
      context: _context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(tittle,style: const TextStyle(fontWeight: FontWeight.bold),),
          content: Text(text, textAlign: TextAlign.justify),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
