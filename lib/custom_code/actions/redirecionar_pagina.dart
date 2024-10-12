// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';

// Função que retorna true se o alarme estiver ativo (tocando) e false caso contrário
Future<bool> redirecionarPagina() async {
  // Verifique o estado do alarme e retorne true se o alarme estiver tocando
  bool isRinging = Alarm.ringStream.hasListener;

  // Retorna true se o alarme estiver ativo, senão false
  return isRinging;
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // Exemplo de uso da função para verificar se o alarme está tocando
    redirecionarPagina().then((isRinging) {
      if (isRinging) {
        // O alarme está tocando, fazer algo (ex: notificar o usuário)
        print("O alarme está tocando!");
      } else {
        // O alarme não está tocando
        print("O alarme não está tocando.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Página Inicial")),
      body: Center(child: Text("Bem-vindo à página inicial!")),
    );
  }
}
