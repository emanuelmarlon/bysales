// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future pararalarme(int id) async {
  // Add your function code here!
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? alarmId = prefs.getInt('alarmId');

  // Verifica se há um alarme salvo
  if (alarmId != null) {
    await Alarm.stop(alarmId);
    print("Alarme $alarmId parado.");

    // Remove o ID do alarme salvo após parar
    await prefs.remove('alarmId');
  } else {
    print("Nenhum alarme ativo encontrado.");
  }
}
