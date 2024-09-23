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

class Product {
  double peso;
  String ncm;
  String imagem;
  String descricao;
  int codigoBarras;
  int codigoCaixa;
  bool ativo;
  String sku;
  double preco;

  Product({
    required this.peso,
    required this.ncm,
    required this.imagem,
    required this.descricao,
    required this.codigoBarras,
    required this.codigoCaixa,
    required this.ativo,
    required this.sku,
    required this.preco,
  });

  Map<String, dynamic> toMap() {
    return {
      'peso': peso,
      'ncm': ncm,
      'imagem': imagem,
      'descricao': descricao,
      'codigoBarras': codigoBarras,
      'codigoCaixa': codigoCaixa,
      'ativo': ativo,
      'sku': sku.toLowerCase(),
      'preco': preco,
    };
  }
}

Future importarProdutosPlanilha(
  FFUploadedFile? planilhaProdutos,
  DocumentReference? empresaRef,
  DocumentReference? refPrincipal,
) async {
  // Add your function code here!
  if (planilhaProdutos == null || empresaRef == null || refPrincipal == null) {
    print('Parâmetros inválidos.');
    return;
  }

  try {
    List<List<dynamic>> csvData = await _loadCsvData(planilhaProdutos);

    if (csvData.isNotEmpty) {
      await _importarProdutosParaFirebase(
        csvData,
        empresaRef,
        refPrincipal,
      );
      print('Importação de produtos concluída com sucesso.');
    } else {
      print('Arquivo CSV de produtos vazio.');
    }
  } catch (e) {
    print('Erro ao importar planilha de produtos: $e');
  }
}

Future<List<List<dynamic>>> _loadCsvData(FFUploadedFile file) async {
  String csvString = utf8.decode(file.bytes!.toList());
  List<List<dynamic>> csvData = CsvToListConverter().convert(csvString);

  // Remove the first line (header)
  if (csvData.isNotEmpty) {
    csvData.removeAt(0);
  }

  return csvData;
}

Future<void> _importarProdutosParaFirebase(
  List<List<dynamic>> csvData,
  DocumentReference empresaRef,
  DocumentReference? refPrincipal,
) async {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference produtosCollection =
      firebaseFirestore.collection('produtos');

  for (List<dynamic> row in csvData) {
    String sku =
        row[4].toString().toLowerCase(); // Assuming SKU is the 5th column

    Map<String, dynamic> produtoData = {
      'peso': row[0],
      'ncm': row[1].toString(),
      'imagem': row[2].toString(),
      'descricao': row[3].toString(),
      'codigoBarras': row[5],
      'codigoCaixa': row[6],
      'ativo': row[7] == 'true',
      'sku': sku,
      'preco': row[8],
      'empresaRef': empresaRef,
      'userRef': refPrincipal,
    };

    QuerySnapshot querySnapshot =
        await produtosCollection.where('sku', isEqualTo: sku).get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot docSnapshot = querySnapshot.docs.first;
      try {
        await docSnapshot.reference.update(produtoData);
        print('Produto atualizado com ID: ${docSnapshot.id}');
      } catch (e) {
        print('Erro ao atualizar produto: $e');
      }
    } else {
      try {
        DocumentReference docRef = await produtosCollection.add(produtoData);
        print('Produto adicionado com ID: ${docRef.id}');
      } catch (e) {
        print('Erro ao adicionar produto: $e');
      }
    }
  }
}
