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

// DO NOT REMOVE OR MODIFY THE CODE ABOVE!//teste//teste//

import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future newCustomAction(DateTime data) async {
  // Add your function code here!
  DateTime now = DateTime.now();

  // Verifica se o horário atual é o mesmo que a data/hora do alarme
  if (now.year == data.year &&
      now.month == data.month &&
      now.day == data.day &&
      now.hour == data.hour &&
      now.minute == data.minute) {
    // Retorna uma mensagem quando o alarme tocar
    return 'Alarm is ringing at ${data.hour}:${data.minute}!';
  } else {
    // Espera 1 segundo antes de verificar novamente
    await Future.delayed(Duration(seconds: 1));

    // Chama a função novamente até atingir a hora do alarme
    return await newCustomAction(data);
  }
}
