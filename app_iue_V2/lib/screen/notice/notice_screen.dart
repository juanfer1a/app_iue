import 'package:appuenvigado/screen/home/home_provider.dart';
import 'package:appuenvigado/screen/imagen_fondo.dart';
import 'package:flutter/material.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  HomeProvider homeProvider = HomeProvider();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ImagenFondo());
  }

  Widget image() {
    if (homeProvider.image.isEmpty) {
      return const Center(child: Text("Notificaciones"));
    } else {
      return const Column();
    }
  }
}
