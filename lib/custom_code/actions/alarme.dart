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
import 'dart:io';
//import 'package:keep_screen_on/keep_screen_on.dart';s

class AlarmStorage {
  static late SharedPreferences prefs;

  // Inicializa o SharedPreferences
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

// Função para agendar um alarme com data, id, título, corpo da notificação, loop de áudio, vibração, volume e caminho do áudio como parâmetros
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
  // Inicializa o Alarm service
  await Alarm.init();

  // Definindo as configurações do alarme
  final alarmSettings = AlarmSettings(
    id: id,
    dateTime: data,
    assetAudioPath: assetAudio, // Caminho para o áudio
    loopAudio: loopAudio,
    vibrate: vibrate,
    volume: volume,
    fadeDuration: 3.0,
    warningNotificationOnKill: Platform.isIOS,
    androidFullScreenIntent: true,
    notificationSettings: NotificationSettings(
      // Remova 'const' para evitar erro
      title: titulo, // Título da notificação
      body: notificationbody, // Corpo da notificação
      stopButton: 'Parar alarme',
      icon: 'notification_icon', // Ícone da notificação
    ),
  );

  // Configurando o alarme
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

  // Exemplo de chamada da função com data, id, título, notificationbody, loopAudio, vibrate, volume e caminho do áudio como parâmetros
  DateTime alarmeData = DateTime.now().add(const Duration(seconds: 10));
  await alarme(
    alarmeData, // Data do alarme
    1, // ID do alarme
    'Lembrete', // Título do alarme
    'É hora de fazer uma pausa!', // Corpo da notificação
    true, // loopAudio: Áudio será repetido
    true, // vibrate: Dispositivo irá vibrar
    0.5, // volume: Volume do alarme (de 0.0 a 1.0)
    'assets/audios/alarm.mp3', // Caminho do arquivo de áudio personalizado
  );

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
