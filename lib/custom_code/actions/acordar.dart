// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:android_power_manager/android_power_manager.dart';
import 'package:flutter/services.dart';

Future<void> acordar() async {
  try {
    // Verifica se o app está ignorando otimizações de bateria
    bool? isIgnoringBatteryOptimizations =
        await AndroidPowerManager.isIgnoringBatteryOptimizations;

    if (isIgnoringBatteryOptimizations == true) {
      // O dispositivo já está ignorando as otimizações de bateria.
      print('O dispositivo já está ignorando as otimizações de bateria.');
    } else {
      // Solicita ao usuário para ignorar as otimizações de bateria
      bool? success =
          await AndroidPowerManager.requestIgnoreBatteryOptimizations();

      if (success == true) {
        print('Agora o app está ignorando as otimizações de bateria.');
      } else {
        print('Falha ao solicitar ignorar otimizações de bateria.');
      }
    }
  } on PlatformException {
    print('Erro ao verificar ou solicitar otimizações de bateria.');
  }
}
