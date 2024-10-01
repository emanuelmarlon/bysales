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
import 'package:rxdart/rxdart.dart';

// Inicializa o FlutterLocalNotificationsPlugin
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Função principal para agendar notificações
Future<void> scheduleNotification(
  String? title,
  String? content,
  DateTime? dateTime, // Tipo DateTime para combinar data e hora
  int id,
) async {
  // Debug: exibir data e hora fornecidas
  print('Data e hora fornecidas: $dateTime');

  // Solicita permissões para notificações (iOS)
  await requestNotificationPermissions();

  // Inicializa o banco de dados de fuso horário
  tzdata.initializeTimeZones();

  // Configurações específicas do Android para a notificação
  var androidSettings = AndroidNotificationDetails(
    'channel_id', // ID do canal
    'channel_name', // Nome do canal
    importance: Importance.high, // Alta importância
    priority: Priority.high, // Alta prioridade
    icon: '@mipmap/ic_launcher', // Ícone da notificação
  );

  // Detalhes da notificação
  var notificationDetails =
      NotificationDetails(android: androidSettings, iOS: null);

  // Obtém o fuso horário do dispositivo
  var deviceTimeZone = tz.local;

  // Converte a data e hora fornecidas para o fuso horário do dispositivo
  var scheduledTime = tz.TZDateTime.from(dateTime!, deviceTimeZone);

  // Agenda a notificação
  await flutterLocalNotificationsPlugin.zonedSchedule(
    id, // Usa o ID fornecido
    title!, // Título da notificação
    content!, // Conteúdo da notificação
    scheduledTime, // Tempo agendado
    notificationDetails, // Detalhes da notificação
    androidAllowWhileIdle: true, // Permitir enquanto ocioso
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: id.toString(), // Passa o ID como payload
  );
}

/// Função para lidar com o clique na notificação
void onNotificationTap(NotificationResponse notificationResponse) async {
  int id = int.parse(notificationResponse.payload!); // Obtém o ID do payload
  await pararAlarme(id); // Chama a função para parar o alarme
  await cancelNotification(id); // Cancela a notificação
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
  );
}
