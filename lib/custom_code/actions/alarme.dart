// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlarmStorage {
  static late SharedPreferences prefs;

  // Inicializa o SharedPreferences
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

Future<void> alarme() async {
  // Inicializa o Alarm service
  await Alarm.init();

  // Defina as configurações do alarme
  DateTime alarmTime = DateTime.now()
      .add(const Duration(seconds: 10)); // Defina o horário do alarme

  // Configurações do alarme
  AlarmSettings alarmSettings = AlarmSettings(
    id: 1,
    dateTime: alarmTime,
    assetAudioPath:
        'assets/audios/alarme.mp3', // Mantém vazio para usar o som padrão
    loopAudio: false,
    vibrate: true,
    notificationTitle: 'Alarme',
    notificationBody: 'Seu alarme está tocando',
    enableNotificationOnKill: true,
    androidFullScreenIntent: true,
  );

  // Agendar o alarme usando as configurações criadas
  try {
    await Alarm.set(alarmSettings: alarmSettings);
    print('Alarme agendado com sucesso');
  } catch (e) {
    print('Erro ao agendar o alarme: $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AlarmStorage.init();
  await alarme(); // Chama a função sem passar parâmetros

  runApp(MyApp());
}

// Definindo a classe MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alarm Test App'),
        ),
        body: const Center(
          child: Text('Alarme agendado!'),
        ),
      ),
    );
  }
}
