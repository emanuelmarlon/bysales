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

class AlarmStorage {
  static late SharedPreferences prefs;

  // Inicializa o SharedPreferences
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }
}

// Função para agendar um alarme com data, id, loop de áudio, vibração, volume e caminho do áudio
Future<void> alarmeCopy(
  DateTime data,
  int id,
  bool loopAudio,
  bool vibrate,
  double volume,
  String assetAudio,
) async {
  // Inicializa o Alarm service
  await Alarm.init();

  // Defina as configurações do alarme com strings vazias para notificação
  AlarmSettings alarmSettings = AlarmSettings(
    id: id, // Utiliza o id fornecido como identificador do alarme
    dateTime: data, // Utiliza a data fornecida como horário do alarme
    assetAudioPath:
        assetAudio, // Caminho do arquivo de áudio para o alarme fornecido como parâmetro
    loopAudio: loopAudio, // Define se o áudio deve repetir
    vibrate: vibrate, // Define se o alarme deve vibrar
    volume: volume, // Define o volume do alarme
    notificationTitle: '', // String vazia para o título da notificação
    notificationBody: '', // String vazia para o corpo da notificação
    enableNotificationOnKill: false, // Desativa notificações ao matar o app
    androidFullScreenIntent: true,
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

  // Exemplo de chamada da função com data, id, loopAudio, vibrate, volume e caminho do áudio como parâmetros
  DateTime alarmeData = DateTime.now().add(const Duration(seconds: 10));
  await alarmeCopy(
    alarmeData, // Data do alarme
    1, // ID do alarme
    true, // loopAudio: Áudio será repetido
    true, // vibrate: Dispositivo irá vibrar
    0.5, // volume: Volume do alarme (de 0.0 a 1.0)
    'assets/audios/alarm.mp3', // Caminho do arquivo de áudio personalizado
  );

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
