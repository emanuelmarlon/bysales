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
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:intl/intl.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:printing/printing.dart';

Future imprimirBase64(String? codigoBase64) async {
  // Add your function code here!
  if (codigoBase64 == null) {
    print('Código Base64 é nulo.');
    return;
  }

  final Uint8List decodedBytes = base64Decode(codigoBase64);

  final pdf = pw.Document();
  final pdfImage = pw.MemoryImage(decodedBytes);

  void addPage() {
    final int itemsPerPage = 13;

    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Center(
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Center(child: pw.Image(pdfImage)),
            pw.SizedBox(height: 20),
            // Add your content here
          ],
        ),
      );
    }));
  }

  addPage();
  List<int> pdfBytes = await pdf.save();
  Uint8List blob = Uint8List.fromList(pdfBytes);
  Printing.layoutPdf(onLayout: (PdfPageFormat format) async => blob);
}

void main() {
  // Simulando uma string codificada em base64
  String? codigoBase64 = "SuaStringCodificadaBase64Aqui";
  imprimirBase64(codigoBase64);
}
