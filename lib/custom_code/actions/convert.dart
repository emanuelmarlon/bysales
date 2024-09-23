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

Future<String> convert(FFUploadedFile? arq) async {
  if (arq == null) {
    throw ArgumentError('O arquivo não pode ser nulo.');
  }

  try {
    // Obtém os bytes do arquivo, lidando com a possibilidade de bytes serem nulos
    final Uint8List? bytes = arq.bytes;
    if (bytes == null) {
      throw Exception('Os bytes do arquivo são nulos.');
    }

    // Converte os bytes para uma string Base64
    final String base64String = base64Encode(bytes);

    return base64String;
  } catch (e) {
    throw Exception('Erro ao converter o arquivo: $e');
  }
}
