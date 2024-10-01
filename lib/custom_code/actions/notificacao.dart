// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  // Inicializando o AwesomeNotifications antes de rodar o app
  inicializarNotificacoes();

  runApp(MyApp());
}

void inicializarNotificacoes() {
  AwesomeNotifications().initialize(
    'resource://drawable/res_app_icon', // Caminho do ícone da notificação
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Notificações Básicas',
        channelDescription: 'Canal para notificações básicas',
        defaultColor: Color(0xFF9D50DD),
        ledColor: Colors.white,
        importance:
            NotificationImportance.High, // Alta prioridade para notificações
        channelShowBadge: true, // Mostra ícone na barra de status
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Notificação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    // Verificando as permissões de notificação
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        // Se as notificações não forem permitidas, solicita ao usuário
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  Future<void> criarNotificacao() async {
    await notificacao(
      'Título de Notificação',
      'Esta é uma mensagem de teste',
      DateTime.now()
          .add(Duration(seconds: 5)), // Agendando para daqui 5 segundos
      1, // ID único
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações Locais'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: criarNotificacao,
          child: Text('Criar Notificação'),
        ),
      ),
    );
  }
}

Future<void> notificacao(
  String? title,
  String mensagem,
  DateTime dateAgendamento,
  int id,
) async {
  // Cria a notificação com agendamento
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: id, // ID único para a notificação
      channelKey: 'basic_channel', // Defina uma chave de canal de notificação
      title: title,
      body: mensagem,
      notificationLayout: NotificationLayout.Default,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'CANCELAR', // Identificador do botão
        label: 'Cancelar', // Nome do botão
        autoDismissible: true, // Define se o botão cancela a notificação
      ),
    ],
    schedule: NotificationCalendar(
      year: dateAgendamento.year,
      month: dateAgendamento.month,
      day: dateAgendamento.day,
      hour: dateAgendamento.hour,
      minute: dateAgendamento.minute,
      second: 0,
      allowWhileIdle:
          true, // Permite notificação mesmo em modo de economia de energia
    ),
  );
}
