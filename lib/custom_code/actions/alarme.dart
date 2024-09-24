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

// Função para agendar um alarme com data e id como parâmetros
Future<void> alarme(
  DateTime data,
  int id,
) async {
  // Inicializa o Alarm service
  await Alarm.init();

  // Defina as configurações do alarme usando os parâmetros fornecidos
  AlarmSettings alarmSettings = AlarmSettings(
    id: id, // Utiliza o id fornecido como identificador do alarme
    dateTime: data, // Utiliza a data fornecida como horário do alarme
    assetAudioPath:
        'assets/alarm.mp3', // Caminho do arquivo de áudio para o alarme
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
    print('Alarme agendado com sucesso para $data com id $id');
  } catch (e) {
    print('Erro ao agendar o alarme: $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AlarmStorage.init();

  // Exemplo de chamada da função com data e id como parâmetros
  DateTime alarmeData = DateTime.now().add(const Duration(seconds: 10));
  await alarme(
      alarmeData, 1); // Chamando a função passando a data e o id do alarme

  runApp(MyApp());
}

// Widget básico para iniciar o app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alarm App'),
        ),
        body: const Center(
          child: Text('Alarme agendado com sucesso!'),
        ),
      ),
    );
  }
}
