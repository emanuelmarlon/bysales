// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> localNotification(String? title, String? content) async {
  // Configure the Android initialization settings
  var initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  // Configure the initialization settings for the FlutterLocalNotificationsPlugin
  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: null,
    macOS: null,
  );

  // Initialize the FlutterLocalNotificationsPlugin with the initialization settings
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // Configure the notification details
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    channelDescription:
        'Description of the channel', // Adicione uma descrição do canal
    importance: Importance.max, // Importância alta para acender a tela
    priority: Priority.high, // Prioridade alta
    playSound: true, // Tocar som
    fullScreenIntent: true, // Ativa a tela cheia
    ongoing: false, // Não manter a notificação na área de notificações
  );

  // Configure the notification
  var notificationDetails = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: null,
    macOS: null,
  );

  // Show the notification
  await flutterLocalNotificationsPlugin.show(
    0,
    title ?? '', // Use title parameter here
    content ?? '', // Use content parameter here
    notificationDetails,
    payload: 'item x',
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notificação Local'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              localNotification(
                  'Título da Notificação', 'Corpo da Notificação');
            },
            child: const Text('Enviar Notificação'),
          ),
        ),
      ),
    );
  }
}
