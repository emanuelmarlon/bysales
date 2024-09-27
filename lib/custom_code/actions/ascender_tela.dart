// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:wakelock_plus/wakelock_plus.dart';

Future<void> ascenderTela() async {
  try {
    // Mantém a tela acesa
    await WakelockPlus.enable();
    print('Tela mantida acesa.');
  } catch (e) {
    print('Erro ao ascender a tela: $e');
  }
}
