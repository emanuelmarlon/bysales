// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> notificacao2(
  String? title,
  String mensagem,
  DateTime dateAgendamento,
  int id,
) async {
  // Inicializa o Awesome Notifications
  AwesomeNotifications().initialize(
    null, // Ícone padrão do aplicativo
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic Notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
        importance: NotificationImportance.High,
        playSound: true,
        enableVibration: true,
      ),
    ],
  );

  // Agenda a notificação para a data especificada
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: id,
      channelKey:
          'basic_channel', // O mesmo channelKey definido na inicialização
      title: title ?? 'Título Padrão',
      body: mensagem,
      notificationLayout: NotificationLayout.Default,
    ),
    schedule: NotificationCalendar.fromDate(date: dateAgendamento),
  );
}
