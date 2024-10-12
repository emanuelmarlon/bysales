// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';

Future<bool> redirecionarPagina() async {
  bool isRinging = false;

  // Cria um listener para a stream de alarme
  final Stream<AlarmSettings> alarmStream = Alarm.ringStream.stream;

  // Escuta a stream de alarme
  alarmStream.listen((_) {
    isRinging = true; // O alarme está tocando
  });

  // Aguarda um tempo para dar chance ao alarme de tocar
  await Future.delayed(Duration(seconds: 1));

  return isRinging;
}
