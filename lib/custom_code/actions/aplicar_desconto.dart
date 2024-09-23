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

Future aplicarDesconto(
  double? totalPedido,
  String? percentualDesconto,
  DocumentReference? referenciaPedido,
) async {
  // Add your function code here!
  if (totalPedido == null ||
      percentualDesconto == null ||
      referenciaPedido == null) {
    // Tratar o caso em que um dos parâmetros é nulo
    return;
  }

  // Substituir vírgula por ponto e converter o percentual de desconto para um valor numérico
  double descontoPercentual =
      double.tryParse(percentualDesconto.replaceAll(',', '.')) ?? 0.0;

  // Calcular o desconto em reais
  double descontoReais = (totalPedido * descontoPercentual) / 100.0;

  // Calcular o total após o desconto
  double totalComDesconto = totalPedido - descontoReais;

  // Atualizar os campos na referência do pedido
  await referenciaPedido.update({
    'total': totalComDesconto,
    'descontoReais': descontoReais,
    'desconto': descontoPercentual,
  });
}
