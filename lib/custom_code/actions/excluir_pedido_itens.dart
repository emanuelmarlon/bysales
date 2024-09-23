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

Future excluirPedidoItens(DocumentReference? pedidoRef) async {
  // Add your function code here!
  if (pedidoRef == null) {
    // Verifica se a referência do pedido é nula
    return;
  }

  // Excluir documentos na subcoleção "itens" associados ao pedido
  await FirebaseFirestore.instance
      .collection('pedidos/${pedidoRef.id}/itens')
      .get()
      .then((querySnapshot) {
    querySnapshot.docs.forEach((documento) {
      documento.reference.delete();
    });
  });

  // Excluir documentos na subcoleção "parcelas" associados ao pedido
  await FirebaseFirestore.instance
      .collection('pedidos/${pedidoRef.id}/parcelas')
      .get()
      .then((querySnapshot) {
    querySnapshot.docs.forEach((documento) {
      documento.reference.delete();
    });
  });

  // Excluir o documento na coleção "pedidos"
  await pedidoRef.delete();
}
