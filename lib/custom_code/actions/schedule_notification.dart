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
import 'package:alarm/alarm.dart'; // Adicione esta importação se ainda não estiver presente

// Inicializa o FlutterLocalNotificationsPlugin
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future scheduleNotification(
  String? title,
  String? content,
  DateTime? dateTime, // Tipo DateTime para combinar data e hora
  int id,
) async {
  // Print the provided date and time for debugging
  print('Provided date and time: $dateTime');

  await requestNotificationPermissions();

  // Initialize the timezone database
  tzdata.initializeTimeZones();

  // Initialize the Android-specific settings for the notification
  var androidSettings = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.high,
    priority: Priority.high,
    icon:
        '@mipmap/ic_launcher', // Replace with your small icon name without the extension
  );

  // Initialize the notification details
  var notificationDetails =
      NotificationDetails(android: androidSettings, iOS: null);

  // Get the device's timezone
  var deviceTimeZone = tz.local;

  // Convert the scheduled date and time to the device's timezone
  var scheduledTime = tz.TZDateTime.from(
    dateTime!,
    deviceTimeZone,
  );

  // Schedule the notification
  await flutterLocalNotificationsPlugin.zonedSchedule(
    id, // Use the provided ID for the notification
    title!,
    content!,
    scheduledTime,
    notificationDetails,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: id.toString(), // Pass the ID as payload
  );
}

/// Função para lidar com o clique na notificação
void onNotificationTap(NotificationResponse notificationResponse) async {
  // Verifique se o payload não é nulo
  if (notificationResponse.payload != null) {
    int id = int.parse(notificationResponse.payload!); // Obtém o ID do payload
    await pararAlarme(id); // Chama a função para parar o alarme
    await cancelNotification(id); // Cancela a notificação
  } else {
    print("Nenhum payload encontrado na notificação.");
  }
}

/// Função para lidar com o clique na notificação quando o aplicativo está em segundo plano
void notificationTapBackground(
    NotificationResponse notificationResponse) async {
  onNotificationTap(
      notificationResponse); // Chama a função para tratar o clique
}

/// Função para parar o alarme
Future<void> pararAlarme(int id) async {
  bool result = await Alarm.stop(id); // Para o alarme com base no ID
  if (result) {
    print("Alarme $id parado com sucesso.");
  } else {
    print("Nenhum alarme ativo encontrado para o ID $id.");
  }
}

/// Função para cancelar a notificação
Future<void> cancelNotification(int id) async {
  await flutterLocalNotificationsPlugin.cancel(id); // Cancela a notificação
  print("Notificação $id cancelada.");
}

/// Função para solicitar permissões (necessária para iOS)
Future<void> requestNotificationPermissions() async {
  // Solicita permissões para notificações (apenas para iOS)
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(alert: true, badge: true, sound: true);
}

/// Configuração inicial para capturar o clique na notificação
Future<void> initializeNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: onNotificationTap, // Callback no clique
    onDidReceiveBackgroundNotificationResponse:
        notificationTapBackground, // Callback em segundo plano
  );
}
