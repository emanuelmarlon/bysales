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

import 'package:alarm/alarm.dart';

Future<void> alarme(DateTime data) async {
  // Defina as configurações do alarme com os parâmetros obrigatórios
  DateTime alarmTime = DateTime.now().add(const Duration(seconds: 10));

  // Configurações do alarme
  AlarmSettings alarmSettings = AlarmSettings(
    id: 1, // Um ID único para identificar o alarme
    dateTime: alarmTime, // O horário que o alarme deve tocar
    assetAudioPath: '', // Deixe vazio para usar o som padrão
    notificationTitle: 'Alarme', // Título da notificação quando o alarme toca
    notificationBody: 'Seu alarme está tocando', // Corpo da notificação
    loopAudio: true, // O som do alarme tocará em loop até ser interrompido
    vibrate: true, // Habilita a vibração quando o alarme toca
  );

  // Agendar o alarme usando as configurações criadas
  await Alarm.set(alarmSettings: alarmSettings);
}
