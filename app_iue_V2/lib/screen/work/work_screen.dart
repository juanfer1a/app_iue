import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("dd")),
    );
  }
}
