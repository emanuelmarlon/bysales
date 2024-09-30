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

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future cancelarNotificacao(int id) async {
  // Cancelar a notificação com base no ID fornecido
  await flutterLocalNotificationsPlugin.cancel(id);
}

Future<void> main() async {
  // Inicialização do plugin e da Timezone
  tzdata.initializeTimeZones();

  // Configurações de inicialização para Android e iOS
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  // Inicializa o FlutterLocalNotificationsPlugin
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}
