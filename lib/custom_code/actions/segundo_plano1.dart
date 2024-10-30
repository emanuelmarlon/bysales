// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_fgbg/flutter_fgbg.dart';

Future segundoPlano1() async {
  // Add your function code here!
  // Adicione sua lógica aqui que deve ser executada em segundo plano
  // Por exemplo, você pode realizar uma tarefa como salvar dados, chamar uma API, etc.

  print('Função segundoPlano1 chamada em segundo plano.');

  // Exemplo: Simulando uma operação assíncrona
  await Future.delayed(Duration(seconds: 2)); // Simulando uma tarefa
  print('Tarefa em segundo plano concluída.');
}
