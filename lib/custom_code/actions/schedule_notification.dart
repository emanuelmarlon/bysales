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
import 'package:alarm/alarm.dart'; // Import do pacote alarm
import 'package:shared_preferences/shared_preferences.dart'; // Import do shared_preferences

// Inicialize o FlutterLocalNotificationsPlugin fora da função para ser acessível globalmente
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Função de inicialização das notificações
Future<void> initializeNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings(
          '@mipmap/ic_launcher'); // Ícone da notificação

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: null,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse:
        onDidReceiveNotificationResponse, // Define a função chamada ao clicar na notificação
  );
}

// Função chamada ao clicar na notificação
Future<void> onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  if (notificationResponse.payload != null) {
    // Parse o ID do alarme do payload (ID do alarme já agendado)
    int id = int.parse(notificationResponse.payload!);

    // Para o alarme com o ID fornecido
    await Alarm.stop(id);

    // Cancela a notificação com o mesmo ID
    await flutterLocalNotificationsPlugin.cancel(id);

    // Print para debugging
    print('Alarme $id parado e notificação cancelada.');
  }
}

// Função para agendar a notificação (sem agendar o alarme)
Future<void> scheduleNotification(
  int id, // Parâmetro para o ID da notificação (mesmo ID do alarme)
  String? title,
  String? content,
  DateTime? dateTime, // Parâmetro para a data e hora
) async {
  print('Provided date and time: $dateTime');

  await requestNotificationPermissions();

  // Inicializa o banco de dados de timezone
  tzdata.initializeTimeZones();

  // Configurações da notificação para Android
  var androidSettings = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.high,
    priority: Priority.high,
    icon: '@mipmap/ic_launcher',
  );

  // Detalhes da notificação
  var notificationDetails =
      NotificationDetails(android: androidSettings, iOS: null);

  // Pega o fuso horário do dispositivo
  var deviceTimeZone = tz.local;

  // Converte a data e hora agendada para o fuso horário do dispositivo
  var scheduledTime = tz.TZDateTime.from(
    dateTime!,
    deviceTimeZone,
  );

  // Agenda a notificação e usa o ID como payload (mesmo ID do alarme)
  await flutterLocalNotificationsPlugin.zonedSchedule(
    id, // Usar o ID do alarme como ID da notificação
    title!,
    content!,
    scheduledTime,
    notificationDetails,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: id.toString(), // Define o ID como payload para ser usado no clique
  );
}

// Exemplo de função para solicitar permissões de notificação (para iOS se necessário)
Future<void> requestNotificationPermissions() async {
  // Código para pedir permissão de notificação (somente relevante para iOS)
  // No Android, não é necessário.
}
