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

Future apagarParcelas(DocumentReference? pedidoRef) async {
  // Add your function code here!
  CollectionReference parcelasRef = FirebaseFirestore.instance
      .collection('pedidos/${pedidoRef!.id}/parcelas');

  // Obtém todas as parcelas do pedido
  QuerySnapshot parcelasQuery = await parcelasRef.get();

  // Apaga cada parcela
  for (QueryDocumentSnapshot parcelaDoc in parcelasQuery.docs) {
    await parcelaDoc.reference.delete();
  }
}
