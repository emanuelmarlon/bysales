// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';

Future<void> redirecionarPagina(BuildContext context, String pagina) async {
  // Redireciona para a página passada como parâmetro
  context.pushNamed(pagina);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // Verifica se o alarme foi disparado
    Alarm.ringStream.stream.listen((_) {
      // Redireciona para a página de alarme quando o alarme tocar
      redirecionarPagina(
          context, 'AlarmPage'); // Use a rota nomeada do FlutterFlow
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
