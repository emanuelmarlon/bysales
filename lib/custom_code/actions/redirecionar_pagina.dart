// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alarm/alarm.dart';

// Função de redirecionamento fornecida pelo FlutterFlow
Future redirecionarPagina(
  BuildContext context,
  String pagina,
) async {
  // Use o método de navegação do FlutterFlow
  context.pushNamed(pagina); // Redireciona para a página especificada
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool alarmeAtivo = false;

  @override
  void initState() {
    super.initState();

    // Escutar o evento de toque do alarme
    Alarm.ringStream.stream.listen((_) {
      // Quando o alarme tocar, definir a flag como true e redirecionar
      setState(() {
        alarmeAtivo = true;
      });

      if (alarmeAtivo) {
        // Agora, você pode chamar a função de redirecionamento personalizada
        redirecionarPagina(
            context, 'AlarmPage'); // Use a rota nomeada do FlutterFlow
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
