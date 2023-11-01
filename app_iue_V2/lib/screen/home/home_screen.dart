import 'package:appuenvigado/screen/camera/camera_screen.dart';
import 'package:appuenvigado/screen/home/home_provider.dart';
import 'package:appuenvigado/screen/work/work_screen.dart';
import 'package:appuenvigado/screen/notice/notice_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:camera/camera.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider homeProvider = HomeProvider();
  List<String> images = [];

  int _selectedDrawitem = 0;

  _getDrawerItemWidget(int position) {
    switch (position) {
      case 0:
        return const WorkScreen();
      case 1:
        return const NoticeScreen();
      case 3:
        return const CameraScreen();
    }
  }

  _onSelectItem(int position) {
    setState(() {
      _selectedDrawitem = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Juan"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  )),
            ),
            ExpansionTile(
              title: const Text("Consultas"),
              leading: const Icon(Icons.search),
              children: [
                ListTile(
                  title: const Text("Promedio"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Plan académico"),
                  onTap: () {
                    _onSelectItem(1);
                  },
                ),
                ListTile(
                  title: const Text("Notas periodo"),
                  onTap: () async {
                    String path = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CameraScreen()));
                    homeProvider.image.add(path);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text("Horarios"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text("Matrículas"),
              leading: const Icon(Icons.book),
              children: [
                ListTile(
                  title: const Text("Registrar materias"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Seleccionar horario"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Ajustes matrículas"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Notas Periodo"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text("Solicitudes"),
              leading: const Icon(Icons.document_scanner),
              children: [
                ListTile(
                  title: const Text("Certificados"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Inscripción grados"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Cancelar matería"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
                ListTile(
                  title: const Text("Saber pro"),
                  onTap: () {
                    _onSelectItem(0);
                  },
                ),
              ],
            ),
            ListTile(
              title: const Text("Noticias"),
              leading: const Icon(Icons.notification_add),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: const Text("Tareas"),
              leading: const Icon(Icons.home_work),
              onTap: () {
                _onSelectItem(0);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawitem),
    );
  }
}
