import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? extrairPrimeiroNome(String? nomeCompleto) {
  if (nomeCompleto != null && nomeCompleto.isNotEmpty) {
    List<String> partes = nomeCompleto.split(' ');
    return partes[0];
  }
  return null;
}

String? nomeDoEmail(String? email) {
  if (email != null && email.contains('@')) {
    List<String> partes = email.split('@');
    return partes[0];
  }
  return null;
}

bool? pesquisa2campos(
  String? textpesquisafor,
  String? textpesquisain,
  String? textpesquisain2,
) {
  if (textpesquisafor == null ||
      textpesquisain == null ||
      textpesquisain2 == null) {
    return false;
  }

  return (textpesquisain
          .toLowerCase()
          .contains(textpesquisafor.toLowerCase()) ||
      textpesquisain2.toLowerCase().contains(textpesquisafor.toLowerCase()));
}

double? somarTotal(List<PedidosRecord>? pedidos) {
  if (pedidos == null || pedidos.isEmpty) {
    return null; // or 0.0 depending on your requirements
  }

  double total = 0.0;
  for (var pedido in pedidos) {
    total += pedido.total ?? 0.0;
  }

  return total;
}

String? extrairPrimeiroSegundoNome(String? nomeCompleto) {
  if (nomeCompleto != null && nomeCompleto.isNotEmpty) {
    List<String> partes = nomeCompleto.split(' ');

    if (partes.length >= 2) {
      return partes[0];
    } else {
      // Se houver apenas um nome, retorna somente ele
      return partes[0];
    }
  }
  return null;
}

double? somarTotalItens(List<ItensRecord>? pedidos) {
  if (pedidos == null || pedidos.isEmpty) {
    return null; // or 0.0 depending on your requirements
  }

  double total = 0.0;
  for (var pedido in pedidos) {
    total += pedido.total ?? 0.0;
  }

  return total;
}

double? retornoNumeroVazio(double? numero) {
  if (numero == null ||
      numero.isNaN ||
      numero.isInfinite ||
      numero.isNegative) {
    return 0;
  } else {
    return numero;
  }
}

bool? verificaQuantidade(String? quantidade) {
  if (quantidade == null) {
    // Trate o caso em que a string é nula, você pode querer considerar isso como uma quantidade inválida
    return false;
  }

  // Tente converter a string em um número (double)
  try {
    double quantidadeNum = double.parse(quantidade);
    return quantidadeNum <= 0;
  } catch (e) {
    // Trate o caso em que a string não pode ser convertida em um número
    return false;
  }
}

DateTime? primeiroDiaMesAtual() {
  final now = DateTime.now();
  final primeiroDia = DateTime(now.year, now.month, 1);
  return primeiroDia;
}

DateTime? ultimoDiaMesAtual() {
  final now = DateTime.now();
  final ultimoDia = DateTime(now.year, now.month + 1, 0);
  return ultimoDia;
}

List<PedidosRecord>? pedidosMes(List<PedidosRecord>? listadepedidos) {
  if (listadepedidos == null || listadepedidos.isEmpty) {
    return null; // Return null if the input list is null or empty
  }

  DateTime now = DateTime.now();
  int currentMonth = now.month;

  List<PedidosRecord>? pedidosDoMes = listadepedidos.where((pedido) {
    // Access 'data' directly as it's a field of each PedidosRecord
    DateTime dataPedido =
        pedido.data!; // Assuming data is a field of type DateTime
    return dataPedido.month == currentMonth;
  }).toList();

  return pedidosDoMes.isNotEmpty ? pedidosDoMes : null;
}

DateTime? renovaPeriodo() {
  DateTime dataAtual = DateTime.now();
  DateTime dataRenovada = dataAtual.add(Duration(days: 30));
  return dataRenovada;
}

DateTime dataCom20SegundosAmais(DateTime dataAtual) {
  return dataAtual.add(Duration(seconds: 20));
}
