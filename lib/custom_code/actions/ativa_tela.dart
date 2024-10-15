// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_background/flutter_background.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

Future<void> ativaTela() async {
  // Configuração para execução em segundo plano no Android
  final androidConfig = FlutterBackgroundAndroidConfig(
    notificationTitle: "Alarme Ativado",
    notificationText: "A tela está sendo ativada para o alarme.",
    notificationImportance: AndroidNotificationImportance.normal,
    notificationIcon:
        AndroidResource(name: 'background_icon', defType: 'drawable'),
  );

  // Verifica se já possui permissões
  bool hasPermissions = await FlutterBackground.hasPermissions;
  if (!hasPermissions) {
    // Inicializa o modo de fundo com as configurações do Android
    await FlutterBackground.initialize(androidConfig: androidConfig);
  }

  // Ativa a execução em segundo plano
  bool success = await FlutterBackground.enableBackgroundExecution();

  if (success) {
    print("Execução em segundo plano iniciada!");
    // Mantém a tela ativada
    WakelockPlus.enable(); // Habilita o wake lock para manter a tela acesa
    print("Tela ativada!");
  } else {
    print("Falha ao ativar a tela.");
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Chama a função para ativar a tela após a inicialização do app
  ativaTela(); // Isso vai garantir que a tela acenda no início do app

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ativar Tela no Main')),
        body: Center(child: Text('Tela Ativada na Inicialização')),
      ),
    );
  }
}
