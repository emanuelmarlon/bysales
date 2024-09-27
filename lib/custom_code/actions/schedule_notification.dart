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
  try {
    // Implementar a lógica para solicitar permissões se necessário
    print("Solicitando permissões de notificação...");
  } catch (e) {
    print("Erro ao solicitar permissões: $e");
  }
}

// Função para agendar a notificação
Future<void> scheduleNotification(
  String? title,
  String? content,
  DateTime? dateTime,
  int alarmId,
) async {
  try {
    print('Data e hora fornecidas: $dateTime');
    await requestNotificationPermissions();

    // Inicializa os timezones
    tzdata.initializeTimeZones();

    // Plugin de notificações
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
      payload: '$alarmId', // Passar o alarmId como parte do payload
    );

    alarmStates[alarmId] = true; // Indica que o alarme está ativo
    print("Notificação agendada com sucesso para o alarme ID: $alarmId");
  } catch (e) {
    print("Erro ao agendar a notificação: $e");
  }
}

// Função para tratar a resposta da notificação
Future<void> handleNotificationResponse(NotificationResponse response) async {
  try {
    if (response.actionId == 'stop_alarm') {
      int alarmId =
          int.parse(response.payload!); // Converte o payload para o alarmId
      if (alarmStates.containsKey(alarmId)) {
        // Lógica para parar o alarme
        alarmStates[alarmId] = false; // Alarme parado
        print('Alarme $alarmId parado!');
        // Aqui você pode adicionar a lógica para parar o alarme
      } else {
        print('Alarme $alarmId não encontrado no estado ativo!');
      }
    }
  } catch (e) {
    print("Erro ao tratar a resposta da notificação: $e");
  }
}

// Inicialização do plugin de notificações
void initializeNotifications() {
  try {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: null,
    );

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        handleNotificationResponse(response);
      },
    );

    print("Notificações inicializadas com sucesso!");
  } catch (e) {
    print("Erro ao inicializar notificações: $e");
  }
}

// Chame `initializeNotifications()` no `main()` do seu app

// Lembre-se de chamar initializeNotifications() no seu main()
