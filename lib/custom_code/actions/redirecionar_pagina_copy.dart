// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';

Future<int?> redirecionarPaginaCopy() async {
  int? alarmId;

  // Captura o valor atual da stream assim que chamada
  await Alarm.ringStream.stream.first.then((alarmSettings) {
    alarmId = alarmSettings.id;
  });

  // Retorna o ID do alarme ou null se não houver alarme tocando
  return alarmId;
}
