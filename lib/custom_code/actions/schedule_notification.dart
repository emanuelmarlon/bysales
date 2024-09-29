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
import 'package:alarm/alarm.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> scheduleNotification(
  int id, // Adicionando o parâmetro id
  String? title,
  String? content,
  DateTime? dateTime,
) async {
  // Print the provided date and time for debugging
  print('Provided date and time: $dateTime');

  await requestNotificationPermissions();

  // Initialize the timezone database
  tzdata.initializeTimeZones();

  // Initialize the FlutterLocalNotificationsPlugin
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

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
    id, // Usando o id passado
    title!,
    content!,
    scheduledTime,
    notificationDetails,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: id.toString(), // Passando o id como payload
  );
}

Future<void> pararalarme(int id) async {
  // Add your function code here!
  bool result =
      await Alarm.stop(id); // (mesmo id da notificação passado como parametro)

  if (result) {
    print("Alarme $id parado com sucesso.");
  } else {
    print("Nenhum alarme ativo encontrado para o ID $id.");
  }
}

// Função chamada ao clicar na notificação
Future<void> onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  if (notificationResponse.payload != null &&
      notificationResponse.payload!.isNotEmpty) {
    int id = int.parse(notificationResponse.payload!);
    print('Notificação clicada. Tentando parar alarme com ID: $id');

    await pararalarme(id); // Parar o alarme usando o id da notificação
  }
}
