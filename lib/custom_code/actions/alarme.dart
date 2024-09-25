// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlarmStorage {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

// Inicializa as notificações
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> initNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon');

  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

// Função para exibir uma notificação com um botão para parar o alarme
Future<void> showNotification(int id) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'alarm_channel',
    'Alarm Notifications',
    channelDescription: 'Notifications for Alarm',
    importance: Importance.max,
    priority: Priority.high,
    fullScreenIntent: true,
  );

  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  await flutterLocalNotificationsPlugin.show(
    id,
    'Alarme Ativo',
    'Clique para parar o alarme',
    platformChannelSpecifics,
    payload: id.toString(),
  );
}

// Função para agendar um alarme
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
    notificationTitle: titulo, // Título da notificação
    notificationBody: notificationbody, // Corpo da notificação
    androidFullScreenIntent: true,
  );

  try {
    await Alarm.set(alarmSettings: alarmSettings);
    print('Alarme agendado com sucesso para $data com id $id');
    await showNotification(id); // Exibe a notificação personalizada
  } catch (e) {
    print('Erro ao agendar o alarme: $e');
  }
}

// Função para cancelar o alarme
Future<void> cancelarAlarme(int id) async {
  try {
    await Alarm.stop(id);
    await flutterLocalNotificationsPlugin.cancel(id); // Cancela a notificação
    print('Alarme $id cancelado');
  } catch (e) {
    print('Erro ao cancelar o alarme: $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AlarmStorage.init();
  await initNotifications(); // Inicializa o serviço de notificações

  DateTime alarmeData = DateTime.now().add(const Duration(seconds: 10));
  await alarme(
    alarmeData,
    1,
    'Lembrete', // Título da notificação
    'É hora de fazer uma pausa!', // Corpo da notificação
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Alarme agendado com sucesso!'),
              ElevatedButton(
                onPressed: () async {
                  await cancelarAlarme(1); // Cancela o alarme com ID 1
                },
                child: const Text('Cancelar Alarme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
