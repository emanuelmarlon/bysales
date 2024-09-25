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
  bool result = await Alarm.stop(id);

  if (result) {
    print("Alarme $id parado com sucesso.");
  } else {
    print("Nenhum alarme ativo encontrado para o ID $id.");
  }
}
