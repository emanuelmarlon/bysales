// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'dart:isolate';

void main() async {
  // Inicializar o Android Alarm Manager
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();

  runApp(MyApp());
}

// Definição básica do MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarme Teste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// Página inicial básica
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste de Alarme'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Chamar a função de agendamento do alarme
            agendarAlarme(DateTime.now());
          },
          child: Text('Agendar Alarme'),
        ),
      ),
    );
  }
}

// Função que será chamada pelo alarme
void callback() {
  print('Alarme disparado!');
}

Future agendarAlarme(DateTime data) async {
  // Add your function code here!
  int alarmId = 0; // ID único para o alarme

  // Agendar o alarme
  await AndroidAlarmManager.oneShot(
    const Duration(seconds: 10), // Duração até disparar o alarme (10 segundos)
    alarmId, // ID do alarme
    callback, // Função a ser chamada quando o alarme disparar
    exact: true,
    wakeup: true,
  );
}
