// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fullscreen_window/fullscreen_window.dart';

Future<void> fullEscreen() async {
  try {
    // Ativar o modo de tela cheia
    await FullScreenWindow.setFullScreen(true);
    print("Modo de tela cheia ativado.");
  } catch (e) {
    print("Erro ao ativar o modo de tela cheia: $e");
  }
}
