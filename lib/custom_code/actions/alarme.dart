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
import 'package:flutter_show_when_locked/flutter_show_when_locked.dart'; // Importando o pacote

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
    androidFullScreenIntent: true,
  );

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

  DateTime alarmeData = DateTime.now().add(const Duration(seconds: 10));
  await alarme(
    alarmeData,
    1,
    'Lembrete',
    'É hora de fazer uma pausa!',
    true,
    true,
    0.5,
    'assets/audios/alarm.mp3',
  );

  runApp(MyApp());
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

void onAlarmTriggered() async {
  await sobrepor();
  await WakelockPlus.enable();
}

Future<void> sobrepor() async {
  await FlutterShowWhenLocked().show();
}
