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

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

Future<void> agendarAlarme(DateTime data) async {
  // Inicializa o plugin de notificações
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Configuração da inicialização
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  // Corrigido para usar argumentos nomeados
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // Converte a data/hora para o formato adequado
  final tz.TZDateTime scheduledDate = tz.TZDateTime.from(data, tz.local);

  // Agenda a notificação
  await flutterLocalNotificationsPlugin.zonedSchedule(
    0, // ID da notificação
    'Alarme', // Título
    'Alarm is ringing at ${data.hour}:${data.minute}!', // Mensagem
    scheduledDate,
    const NotificationDetails(
      android: AndroidNotificationDetails(
        'your_channel_id', // ID do canal
        'your_channel_name', // Nome do canal
        channelDescription: 'description', // Descrição do canal
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
      ),
    ),
    androidScheduleMode: AndroidScheduleMode.exact,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
  );
}
