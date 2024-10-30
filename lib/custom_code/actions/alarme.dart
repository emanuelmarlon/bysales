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
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'dart:io';

class AlarmStorage {
  static late SharedPreferences prefs;

  // Inicializa o SharedPreferences
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

// Função para agendar um alarme com configurações personalizadas
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

  final alarmSettings = AlarmSettings(
    id: id,
    dateTime: data,
    assetAudioPath: assetAudio,
    loopAudio: loopAudio,
    vibrate: vibrate,
    volume: volume,
    fadeDuration: 3.0,
    warningNotificationOnKill: Platform.isIOS,
    androidFullScreenIntent: true,
    notificationSettings: NotificationSettings(
      title: titulo,
      body: notificationbody,
      stopButton: 'Parar alarme',
      icon: 'notification_icon',
    ),
  );

  try {
    await Alarm.set(alarmSettings: alarmSettings);
    print('Alarme agendado para $data com id $id');
  } catch (e) {
    print('Erro ao agendar o alarme: $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AlarmStorage.init();
  await initializeService();

  runApp(MyApp());
}

// Inicializa o serviço de segundo plano
Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: true,
      isForegroundMode: true,
      notificationChannelId: 'alarm_channel',
      initialNotificationTitle: 'Alarme ativo',
      initialNotificationContent: 'Seu alarme está configurado.',
    ),
    iosConfiguration: IosConfiguration(
      onForeground: onStart,
      onBackground: (_) => false, // Serviços contínuos são limitados no iOS
    ),
  );

  service.startService();
}

// Configuração da função onStart para manter o serviço ativo em segundo plano
void onStart(ServiceInstance service) {
  if (service is AndroidServiceInstance) {
    service.setForegroundNotificationInfo(
      title: "App de Alarme",
      content: "O alarme está ativo em segundo plano.",
    );
  }
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
