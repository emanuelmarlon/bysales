// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'dart:async';

Future<void> segundoPlano() async {
  // Inicializa o serviço
  final service = FlutterBackgroundService();

  // Configuração para Android e iOS
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      // Função que será executada quando o serviço for iniciado
      onStart: onStart,

      // Auto start quando o app estiver em foreground e background
      autoStart: true,
      isForegroundMode: true,

      // ID da notificação de foreground (necessário para Android)
      notificationChannelId: 'my_foreground_service',
      initialNotificationTitle: 'Serviço em Segundo Plano',
      initialNotificationContent: 'O serviço foi iniciado.',
      foregroundServiceNotificationId: 1001,
    ),
    iosConfiguration: IosConfiguration(
      // Auto start para iOS
      autoStart: true,
      onForeground: onStart,
      onBackground: onIosBackground,
    ),
  );

  // Inicia o serviço de fundo
  service.startService();
}

// Função para rodar no serviço de fundo (Isolate separado)
@pragma('vm:entry-point')
void onStart(ServiceInstance service) {
  // Aqui você pode definir a lógica que vai rodar em segundo plano
  // Por exemplo, um Timer que roda continuamente a cada 1 segundo

  if (service is AndroidServiceInstance) {
    service.setForegroundNotificationInfo(
      title: "Serviço Ativo",
      content: "O serviço de fundo está rodando.",
    );
  }

  Timer.periodic(const Duration(seconds: 1), (timer) {
    print("O serviço está rodando em segundo plano: ${DateTime.now()}");
  });

  service.on('stopService').listen((event) {
    service.stopSelf();
  });
}

// Função de callback no iOS para segundo plano
@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  // Lógica de background para iOS
  return true;
}
