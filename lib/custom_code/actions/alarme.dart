// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
//import 'package:keep_screen_on/keep_screen_on.dart';

class AlarmStorage {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

Future<void> alarme(
  DateTime data,
  int id,
  String titulo,
  String notificationbody,
  bool loopAudio,
  bool vibrate,
  double volume,
  String assetAudio,
) async {
  await Alarm.init();

  AlarmSettings alarmSettings = AlarmSettings(
    id: id,
    dateTime: data,
    assetAudioPath: assetAudio,
    loopAudio: loopAudio,
    vibrate: vibrate,
    volume: volume,
    notificationTitle: titulo,
    notificationBody: notificationbody,
    enableNotificationOnKill: true,
    androidFullScreenIntent: true, // Ativa a tela com notificação em tela cheia
  );

  try {
    await Alarm.set(alarmSettings: alarmSettings);
    print('Alarme agendado com sucesso para $data com id $id');
  } catch (e) {
    print('Erro ao agendar o alarme: $e');
  }
}

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

// Esta função será chamada quando o aplicativo for trazido para a frente ou o usuário tocar na notificação
void onNotificationReceived() async {
  await WakelockPlus.enable();
  // await KeepScreenOn.turnOn();
  // Funções de controle de tela foram removidas, já que são controladas na página
}

// Função para sobrepor a tela bloqueada (Comentada)
//Future<void> sobrepor() async {
//await FlutterShowWhenLocked().show(); // Permite sobrepor a tela bloqueada
//}
