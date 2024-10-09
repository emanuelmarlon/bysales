// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:permission_handler/permission_handler.dart';

Future<void> solicitarPermissao() async {
  // Verifica o status atual da permissão de agendar alarmes exatos
  final status = await Permission.scheduleExactAlarm.status;
  print('Permissão de agendar alarme exato: $status.');

  // Caso a permissão esteja negada, solicita a permissão
  if (status.isDenied) {
    print('Solicitando permissão para agendar alarme exato...');
    final resultado = await Permission.scheduleExactAlarm.request();

    // Verifica se a permissão foi concedida ou não
    print(
        'Permissão de agendar alarme exato ${resultado.isGranted ? '' : 'não'} concedida.');
  }
}
