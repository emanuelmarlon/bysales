import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'agendamentos_widget.dart' show AgendamentosWidget;
import 'package:flutter/material.dart';

class AgendamentosModel extends FlutterFlowModel<AgendamentosWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - redirecionarPagina] action in agendamentos widget.
  bool? alarme;
  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
