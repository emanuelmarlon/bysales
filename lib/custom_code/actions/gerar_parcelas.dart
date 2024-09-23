// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future gerarParcelas(
  String? nomeFormaPagamento,
  DocumentReference? pedidoRef,
  DocumentReference? clienteRef,
  String? tipo,
  double? valorPedido,
  DocumentReference? empresaRef,
) async {
  // Add your function code here!
  List<String> numeros =
      nomeFormaPagamento!.replaceAll(RegExp(r'[^0-9]+'), ' ').trim().split(' ');

  List<Map<String, dynamic>> parcelas = [];

  if (numeros.isNotEmpty && numeros.first.isNotEmpty) {
    // Se há números na forma de pagamento, gera parcelas
    for (int i = 0; i < numeros.length; i++) {
      int dias = int.parse(numeros[i]);
      DateTime dataVencimento = DateTime.now().add(Duration(days: dias));

      double valorParcela = valorPedido! / numeros.length;

      parcelas.add({
        'pedidoRef': pedidoRef,
        'clienteRef': clienteRef,
        'dataVencimento': Timestamp.fromDate(dataVencimento),
        'valor': valorParcela,
        'tipo': tipo,
        'numeroParcela': i + 1, // Adiciona o número da parcela
        'empresaRef': empresaRef,
      });
    }
  } else {
    // Se não há números na forma de pagamento, gera uma única parcela com a data atual
    DateTime dataVencimento = DateTime.now();

    parcelas.add({
      'pedidoRef': pedidoRef,
      'clienteRef': clienteRef,
      'dataVencimento': Timestamp.fromDate(dataVencimento),
      'valor': valorPedido,
      'tipo': tipo,
      'numeroParcela': 1, // Adiciona o número da parcela
      'empresaRef': empresaRef,
    });
  }

  // Salva as parcelas na subcoleção 'parcelas' no documento do pedido
  for (var parcela in parcelas) {
    await FirebaseFirestore.instance
        .collection('pedidos/${pedidoRef!.id}/parcelas')
        .add(parcela);
  }
}
