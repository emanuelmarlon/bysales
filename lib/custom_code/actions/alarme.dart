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
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:flutter_show_when_locked/flutter_show_when_locked.dart'; // Importando o pacote
import 'package:wakelock_plus/wakelock_plus.dart';

class AlarmStorage {
  static late SharedPreferences prefs;

  // Inicializa o SharedPreferences
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

// Função para agendar um alarme com data, id, título, corpo da notificação, loop de áudio, vibração, volume e caminho do áudio como parâmetros
Future<void> alarme(
  DateTime data,
  int id,
  String titulo,
  String notificationbody,
  bool loopAudio,
  bool vibrate,
  double volume,
  String assetAudio,
) async {
  // Inicializa o Alarm service
  await Alarm.init();

  // Defina as configurações do alarme usando os parâmetros fornecidos
  AlarmSettings alarmSettings = AlarmSettings(
    id: id, // Utiliza o id fornecido como identificador do alarme
    dateTime: data, // Utiliza a data fornecida como horário do alarme
    assetAudioPath:
        assetAudio, // Caminho do arquivo de áudio para o alarme fornecido como parâmetro
    loopAudio: loopAudio, // Define se o áudio deve repetir
    vibrate: vibrate, // Define se o alarme deve vibrar
    volume: volume, // Define o volume do alarme
    notificationTitle: titulo, // Utiliza o título fornecido para a notificação
    notificationBody:
        notificationbody, // Utiliza o corpo da notificação fornecido
    enableNotificationOnKill: true,
    androidFullScreenIntent: true, // Habilita o modo tela cheia
  );

  // Agendar o alarme usando as configurações criadas
  try {
    await Alarm.set(alarmSettings: alarmSettings);
    print('Alarme agendado com sucesso para $data com id $id');
  } catch (e) {
    print('Erro ao agendar o alarme: $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AlarmStorage.init();

  // Exemplo de chamada da função com data, id, título, notificationbody, loopAudio, vibrate, volume e caminho do áudio como parâmetros
  DateTime alarmeData = DateTime.now().add(const Duration(seconds: 10));
  await alarme(
    alarmeData, // Data do alarme
    1, // ID do alarme
    'Lembrete', // Título do alarme
    'É hora de fazer uma pausa!', // Corpo da notificação
    true, // loopAudio: Áudio será repetido
    true, // vibrate: Dispositivo irá vibrar
    0.5, // volume: Volume do alarme (de 0.0 a 1.0)
    'assets/audios/alarm.mp3', // Caminho do arquivo de áudio personalizado
  );

  // Mantém a tela ligada quando o alarme disparar
  WakelockPlus.enable();

  runApp(MyApp());
}

// Widget básico para iniciar o app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alarm App'),
        ),
        body: const Center(
          child: Text('Alarme agendado com sucesso!'),
        ),
      ),
    );
  }
}

// Função que será chamada quando o alarme disparar
void onAlarmTriggered() async {
  await sobrepor();
  await WakelockPlus.enable();
  // Aqui você pode adicionar qualquer outra lógica que deseja executar quando o alarme tocar
}

// Função para mostrar a tela sobre o bloqueio
Future sobrepor() async {
  await FlutterShowWhenLocked().show();
}
