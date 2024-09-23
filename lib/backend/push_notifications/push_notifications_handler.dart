import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: const Color(0xFF337BB8),
          child: Center(
            child: Image.asset(
              'assets/images/dc42af2f-6b39-4f92-a6fc-61e00e75b656.png',
              width: 130.0,
              fit: BoxFit.contain,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'criaConta': (data) async => ParameterData(
        allParams: {
          'usuario': getParameter<DocumentReference>(data, 'usuario'),
        },
      ),
  'empresa': (data) async => ParameterData(
        allParams: {
          'empresa': getParameter<DocumentReference>(data, 'empresa'),
          'empresaDoc': await getDocumentParameter<EmpresasRecord>(
              data, 'empresaDoc', EmpresasRecord.fromSnapshot),
        },
      ),
  'home': ParameterData.none(),
  'login': ParameterData.none(),
  'empresasCadastradas': ParameterData.none(),
  'usuariosCadastrados': ParameterData.none(),
  'usuario': (data) async => ParameterData(
        allParams: {
          'usuario': getParameter<DocumentReference>(data, 'usuario'),
          'usuarioDoc': await getDocumentParameter<UsersRecord>(
              data, 'usuarioDoc', UsersRecord.fromSnapshot),
        },
      ),
  'editarEmpresa': (data) async => ParameterData(
        allParams: {
          'empresa': getParameter<DocumentReference>(data, 'empresa'),
          'empresaDoc': await getDocumentParameter<EmpresasRecord>(
              data, 'empresaDoc', EmpresasRecord.fromSnapshot),
        },
      ),
  'editarUsuario': (data) async => ParameterData(
        allParams: {
          'usuario': getParameter<DocumentReference>(data, 'usuario'),
          'usuarioDoc': await getDocumentParameter<UsersRecord>(
              data, 'usuarioDoc', UsersRecord.fromSnapshot),
        },
      ),
  'clientesCadastrados': ParameterData.none(),
  'cliente': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
          'clienteDoc': await getDocumentParameter<ClientesRecord>(
              data, 'clienteDoc', ClientesRecord.fromSnapshot),
        },
      ),
  'editarCliente': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
          'clienteDoc': await getDocumentParameter<ClientesRecord>(
              data, 'clienteDoc', ClientesRecord.fromSnapshot),
        },
      ),
  'cadastrarCliente': ParameterData.none(),
  'produtosCadastrados': ParameterData.none(),
  'editarProdutoC': (data) async => ParameterData(
        allParams: {
          'produto': getParameter<DocumentReference>(data, 'produto'),
          'produtoDoc': await getDocumentParameter<ProdutosRecord>(
              data, 'produtoDoc', ProdutosRecord.fromSnapshot),
        },
      ),
  'cadastrarProduto': ParameterData.none(),
  'pedidos': ParameterData.none(),
  'clientesCadastradosPedido': ParameterData.none(),
  'novoOrcamento': (data) async => ParameterData(
        allParams: {
          'pedido': getParameter<DocumentReference>(data, 'pedido'),
        },
      ),
  'cadastrarSituacoes': ParameterData.none(),
  'catalogo': (data) async => ParameterData(
        allParams: {
          'pedido': getParameter<DocumentReference>(data, 'pedido'),
          'pedidoDoc': await getDocumentParameter<PedidosRecord>(
              data, 'pedidoDoc', PedidosRecord.fromSnapshot),
        },
      ),
  'alterarSituacaoPedido': (data) async => ParameterData(
        allParams: {
          'pedido': getParameter<DocumentReference>(data, 'pedido'),
        },
      ),
  'cadastrarFormaPagamento': ParameterData.none(),
  'importacoes': ParameterData.none(),
  'promocoes': (data) async => ParameterData(
        allParams: {
          'produto': await getDocumentParameter<ProdutosRecord>(
              data, 'produto', ProdutosRecord.fromSnapshot),
        },
      ),
  'notificacoes': ParameterData.none(),
  'pagamentos': ParameterData.none(),
  'testevideo': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
