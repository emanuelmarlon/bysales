// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:wakelock_plugin/wakelock_plugin.dart';

Future<void> wakelockplugin001() async {
  final wakelockPlugin =
      WakelockPlugin(); // Cria uma instância do WakelockPlugin
  await wakelockPlugin.enable(); // Chama o método enable na instância
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    wakelockplugin001(); // Chama a função para ativar a tela acesa
  }

  @override
  void dispose() {
    final wakelockPlugin =
        WakelockPlugin(); // Cria uma instância do WakelockPlugin
    wakelockPlugin.disable(); // Desativa o wakelock ao descartar o widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mantenha a Tela Acesa'),
        ),
        body: Center(
          child: Text('A tela permanece acesa!'),
        ),
      ),
    );
  }
}
