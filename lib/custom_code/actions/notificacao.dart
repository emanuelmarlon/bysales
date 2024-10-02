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
  WidgetsFlutterBinding.ensureInitialized();
  inicializarNotificacoes(); // Inicializando o AwesomeNotifications antes de rodar o app
  runApp(MyApp());
}

void inicializarNotificacoes() {
  // Inicializando AwesomeNotifications e criando o canal
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
      // Permitir solicitações de permissão automaticamente
      debug: true);
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

    // Verificando se as permissões de notificação estão permitidas
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        // Solicita permissão de notificação ao usuário
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
      1, // ID único da notificação
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
  // Criando a notificação com agendamento
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: id, // ID único para a notificação
      channelKey: 'basic_channel', // Chave do canal de notificação
      title: title,
      body: mensagem,
      notificationLayout: NotificationLayout.Default,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'CANCELAR', // Identificador do botão
        label: 'Cancelar', // Nome do botão
        autoDismissible: true, // Botão cancela a notificação
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
          true, // Permite notificação em modo de economia de energia
    ),
  );
}
