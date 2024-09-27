// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

// Dicionário para armazenar IDs de alarmes e seus estados
Map<int, bool> alarmStates = {};

// Função para solicitar permissões de notificação
Future<void> requestNotificationPermissions() async {
  // Implementar a lógica para solicitar permissões se necessário
}

// Função para agendar a notificação
Future<void> scheduleNotification(
  String? title,
  String? content,
  DateTime? dateTime,
  int alarmId,
) async {
  print('Provided date and time: $dateTime');

  await requestNotificationPermissions();

  tzdata.initializeTimeZones();

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  var androidSettings = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.high,
    priority: Priority.high,
    icon: '@mipmap/ic_launcher', // Nome do ícone pequeno
    // Adicionando ações à notificação
    actions: <AndroidNotificationAction>[
      AndroidNotificationAction(
        'stop_alarm',
        'Parar Alarme',
      ),
    ],
  );

  var notificationDetails =
      NotificationDetails(android: androidSettings, iOS: null);

  var deviceTimeZone = tz.local;

  var scheduledTime = tz.TZDateTime.from(
    dateTime!,
    deviceTimeZone,
  );

  // Agendando a notificação
  await flutterLocalNotificationsPlugin.zonedSchedule(
    alarmId, // Usar alarmId como ID da notificação
    title!,
    content!,
    scheduledTime,
    notificationDetails,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: 'Custom_Sound',
  );

  alarmStates[alarmId] = true; // Indica que o alarme está ativo
}

// Função para tratar a resposta da notificação
Future<void> handleNotificationResponse(NotificationResponse response) async {
  if (response.actionId == 'stop_alarm') {
    int alarmId = response.payload != null ? int.parse(response.payload!) : 0;

    if (alarmStates.containsKey(alarmId)) {
      // Lógica para parar o alarme
      alarmStates[alarmId] = false; // Alarme parado
      print('Alarme $alarmId parado!');

      // Aqui você pode adicionar a lógica para parar o alarme
    }
  }
}

// Inicialização do plugin de notificações
void initializeNotifications() {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: null,
  );

  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (NotificationResponse response) {
      handleNotificationResponse(response);
    },
  );
}

// Lembre-se de chamar initializeNotifications() no seu main()
