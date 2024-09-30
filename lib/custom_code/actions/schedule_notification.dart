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

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeNotifications();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste de Notificação',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testar Notificação'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Chame a função para agendar a notificação
            await scheduleNotification(
              "Título da Notificação",
              "Este é o conteúdo da notificação.",
              DateTime.now().add(Duration(
                  seconds: 5)), // Exemplo: agendar para 5 segundos depois
              123, // ID da notificação
            );
          },
          child: Text('Agendar Notificação'),
        ),
      ),
    );
  }
}

// Inicializa as notificações
Future<void> initializeNotifications() async {
  tzdata.initializeTimeZones();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (NotificationResponse response) async {
      // Imprime uma mensagem ao clicar na notificação
      print('Notificação clicada: ID = ${response.id}');

      // Cancela a notificação
      await cancelarNotificacao(
          response.id!); // Usando '!' para garantir que não seja nulo

      // Para o alarme correspondente ao ID
      await pararAlarme(
          response.id!); // Usando '!' para garantir que não seja nulo
    },
  );
}

// Função para agendar a notificação
Future scheduleNotification(
  String? title,
  String? content,
  DateTime? dateTime,
  int id,
) async {
  // Print the provided date and time for debugging
  print('Provided date and time: $dateTime');

  await requestNotificationPermissions();

  // Initialize the timezone database
  tzdata.initializeTimeZones();

  // Initialize the Android-specific settings for the notification
  var androidSettings = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.high,
    priority: Priority.high,
    icon:
        '@mipmap/ic_launcher', // Replace with your small icon name without the extension
  );

  // Initialize the notification details
  var notificationDetails =
      NotificationDetails(android: androidSettings, iOS: null);

  // Get the device's timezone
  var deviceTimeZone = tz.local;

  // Convert the scheduled date and time to the device's timezone
  var scheduledTime = tz.TZDateTime.from(
    dateTime!,
    deviceTimeZone,
  );

  // Schedule the notification
  await flutterLocalNotificationsPlugin.zonedSchedule(
    id, // Use the provided ID for the notification
    title!,
    content!,
    scheduledTime,
    notificationDetails,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: 'Custom_Sound',
  );

  print("Notificação agendada com ID: $id para $scheduledTime");
}

// Função para cancelar a notificação
Future<void> cancelarNotificacao(int id) async {
  await flutterLocalNotificationsPlugin.cancel(id);
  print("Notificação com ID $id cancelada.");
}

// Função para parar o alarme
Future<void> pararAlarme(int id) async {
  bool result = await Alarm.stop(id);
  if (result) {
    print("Alarme $id parado com sucesso.");
  } else {
    print("Nenhum alarme ativo encontrado para o ID $id.");
  }
}

// Função para solicitar permissões de notificação (exemplo)
Future<void> requestNotificationPermissions() async {
  // Aqui você pode implementar a lógica para solicitar permissões, se necessário.
  // Isso pode variar dependendo da plataforma e da versão do Flutter.
  print('Permissões de notificação solicitadas.');
}
