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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future criarContaFirebase(
  String? email,
  String? senha,
  DocumentReference? referencia,
) async {
  // Add your function code here!
  try {
    // 1. Criar o usuário no Firebase Authentication
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: senha!,
    );

    // 2. Sucesso - usuário criado
    print('Usuário criado com sucesso: $email');
  } catch (error) {
    // Lidar com erros durante a criação do usuário
    print('Erro ao criar usuário: $error');
  }
}
