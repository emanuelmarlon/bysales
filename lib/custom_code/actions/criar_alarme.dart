// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

Future<void> criarAlarme(
  DateTime data,
  String titulo,
  bool skipUi,
) async {
  // Extraindo a hora e minutos da data fornecida
  int hora = data.hour;
  int minutos = data.minute;

  // Criando o alarme no horário especificado
  FlutterAlarmClock.createAlarm(hour: hora, minutes: minutos);

  // Como o pacote nativamente não aceita título para o alarme, o 'titulo' pode ser usado para notificações ou armazenamento local
  // Aqui você pode adicionar lógica adicional para manipular o 'titulo'

  if (skipUi) {
    // Se 'skipUi' for verdadeiro, evita mostrar a interface do alarme (comportamento customizado)
    // Note que o pacote sempre abre a tela do alarme no Android, não há como evitar isso diretamente
    // Então, aqui você pode inserir uma lógica customizada como exibir uma notificação ou registrar o alarme localmente
    // Caso contrário, pode exibir a lista de alarmes.
    FlutterAlarmClock.showAlarms();
  }
}
