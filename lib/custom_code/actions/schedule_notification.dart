// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;
import 'package:alarm/alarm.dart';
import 'dart:async';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Streams de notificações
final StreamController<String?> selectNotificationStream =
    StreamController<String?>();

// Função para inicializar notificações
Future<void> initializeNotifications() async {
  final AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings(
          '@mipmap/ic_launcher'); // Verifique se o ícone está correto

  final DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings(
    onDidReceiveLocalNotification: (id, title, body, payload) async {
      // Função callback para iOS
    },
  );

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin, // Aqui está a correção
    macOS: initializationSettingsDarwin, // Também usamos Darwin para macOS
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
  );

  _configureSelectNotificationStream();
}

// Função chamada ao clicar na notificação
Future<void> onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  if (notificationResponse.payload != null &&
      notificationResponse.payload!.isNotEmpty) {
    selectNotificationStream.add(notificationResponse.payload);
  }
}

// Função para parar o alarme
Future<void> pararalarme(int id) async {
  bool result = await Alarm.stop(id);

  if (result) {
    print("Alarme $id parado com sucesso.");
  } else {
    print("Nenhum alarme ativo encontrado para o ID $id.");
  }
}

// Função para configurar o stream ao clicar na notificação
void _configureSelectNotificationStream() {
  selectNotificationStream.stream.listen((String? payload) async {
    if (payload != null) {
      int id = int.parse(payload);
      print('Notificação clicada. Tentando parar alarme com ID: $id');

      await pararalarme(id);

      // Cancela a notificação
      await flutterLocalNotificationsPlugin.cancel(id);
    }
  });
}

// Função para agendar a notificação
Future<void> scheduleNotification(
  int id,
  String? title,
  String? content,
  DateTime? dateTime,
) async {
  print('Data e hora fornecidas: $dateTime');

  await requestNotificationPermissions();

  // Inicializa o banco de dados de timezones
  tzdata.initializeTimeZones();

  var androidSettings = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    channelDescription:
        'Descrição do canal', // Certifique-se de configurar a descrição
    importance: Importance.high,
    priority: Priority.high,
    icon: '@mipmap/ic_launcher', // Verifique se o ícone existe
  );

  var notificationDetails = NotificationDetails(android: androidSettings);

  // Obtem o fuso horário do dispositivo
  var deviceTimeZone = tz.local;

  // Converte a data e hora para o fuso horário do dispositivo
  var scheduledTime = tz.TZDateTime.from(dateTime!, deviceTimeZone);

  // Agenda a notificação
  await flutterLocalNotificationsPlugin.zonedSchedule(
    id, // ID da notificação e do alarme
    title!,
    content!,
    scheduledTime,
    notificationDetails,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    payload: id.toString(), // Usa o ID do alarme como payload
  );
}

// Função para solicitar permissões de notificação
Future<void> requestNotificationPermissions() async {
  if (await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.areNotificationsEnabled() ??
      false) {
    return; // As permissões já foram concedidas
  }

  final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
      flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();

  final bool? grantedNotificationPermission =
      await androidImplementation?.requestNotificationsPermission();
  if (!(grantedNotificationPermission ?? false)) {
    print('Permissão de notificação negada.');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeNotifications();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alarm Notification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento de Notificações e Alarmes'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            exampleUsage();
          },
          child: Text('Agendar Notificação e Alarme'),
        ),
      ),
    );
  }
}

// Exemplo de uso para agendar notificação
void exampleUsage() async {
  await scheduleNotification(
    123, // ID do alarme
    'Alarme Ativo',
    'Clique para parar o alarme',
    DateTime.now().add(Duration(seconds: 10)), // Data e hora da notificação
  );
}
