// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:flutter/services.dart';
import 'package:auto_start_flutter/auto_start_flutter.dart';

Future<void> concederPermissao() async {
  try {
    // Verifica se a permissão de auto-inicialização está disponível no dispositivo
    bool? autoStartDisponivel = await isAutoStartAvailable;

    // Verifica se o valor não é nulo e se a permissão está disponível
    if (autoStartDisponivel != null && autoStartDisponivel) {
      await getAutoStartPermission();
      print("Permissão de auto-inicialização concedida.");
    } else {
      print(
          "A permissão de auto-inicialização não está disponível para este dispositivo.");
    }
  } on PlatformException catch (e) {
    // Em caso de erro, imprime o erro no console
    print("Erro ao solicitar permissão de auto-inicialização: $e");
  }
}
