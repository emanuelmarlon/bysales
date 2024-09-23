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

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data'; // Adicionando import para Uint8List
import 'package:csv/csv.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future importarClientesPlanilha(
  FFUploadedFile? planilhaClientes,
  DocumentReference? empresaRef,
  DocumentReference? userRef,
  DocumentReference? refPrincipal,
) async {
  // Add your function code here!
  if (planilhaClientes == null || empresaRef == null || userRef == null) {
    print('Parâmetros inválidos.');
    return;
  }

  try {
    List<List<dynamic>> csvData = await _loadCsvData(planilhaClientes);

    if (csvData.isNotEmpty) {
      await _importarClientesParaFirebase(
        csvData,
        empresaRef,
        userRef,
        refPrincipal,
      );
      print('Importação concluída com sucesso.');
    } else {
      print('Arquivo CSV vazio.');
    }
  } catch (e) {
    print('Erro ao importar planilha: $e');
  }
}

Future<List<List<dynamic>>> _loadCsvData(FFUploadedFile file) async {
  String csvString = utf8.decode(file.bytes!.toList());
  List<List<dynamic>> csvData = CsvToListConverter().convert(csvString);

  // Remover a primeira linha (cabeçalho)
  if (csvData.isNotEmpty) {
    csvData.removeAt(0);
  }

  return csvData;
}

Future<void> _importarClientesParaFirebase(
  List<List<dynamic>> csvData,
  DocumentReference empresaRef,
  DocumentReference userRef,
  DocumentReference? refPrincipal,
) async {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference clientesCollection =
      firebaseFirestore.collection('clientes');

  for (List<dynamic> row in csvData) {
    // Ajuste para extrair apenas os números do campo CNPJ/CPF
    String cnpjcpf = row[4].toString().replaceAll(RegExp(r'[^\d]'), '');

    cnpjcpf = cnpjcpf.padLeft(14, '0');

    Map<String, dynamic> clienteData = {
      'ativo': row[0] == 'true',
      'bairro': row[1].toString(),
      'cep': row[2].toString(),
      'cidade': row[3].toString(),
      'cnpjcpf': cnpjcpf.toString(), // Armazena apenas os números
      'dataCad': row[5],
      'email': row[6].toString(),
      'endereco': row[7].toString(),
      'estado': row[8].toString(),
      'fantasia': row[9].toString(),
      'inscricaoEstadual': row[10].toString(),
      'numero': row[11],
      'razaoSocial': row[12].toString(),
      'telefone': row[13].toString(),
      'vendedor': row[14].toString(),
      'dataUltimaCompra': row[15].toString(),
      'empresaRef': empresaRef,
      'userRef': userRef,
      'refPrincipal': refPrincipal,
    };

    // Verifica se o CNPJ/CPF já existe na tabela clientes
    QuerySnapshot querySnapshot =
        await clientesCollection.where('cnpjcpf', isEqualTo: cnpjcpf).get();

    if (querySnapshot.docs.isNotEmpty) {
      // Se existir, atualiza os dados
      DocumentSnapshot docSnapshot = querySnapshot.docs.first;
      try {
        await docSnapshot.reference.update(clienteData);
        print('Cliente atualizado com ID: ${docSnapshot.id}');
      } catch (e) {
        print('Erro ao atualizar cliente: $e');
      }
    } else {
      // Se não existir, adiciona um novo cliente
      try {
        DocumentReference docRef = await clientesCollection.add(clienteData);
        print('Cliente adicionado com ID: ${docRef.id}');
      } catch (e) {
        print('Erro ao adicionar cliente: $e');
      }
    }
  }
}
