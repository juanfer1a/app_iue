
import 'package:appuenvigado/screen/login/login_provider.dart';
import 'package:appuenvigado/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
          ChangeNotifierProvider(create: (_)=> LoginProvider())
      ],
      child:  MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,        
        home: const SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(8.0),
              child: LoginScreen())
          ),
        ),
        
      ),
    );
  }
}
