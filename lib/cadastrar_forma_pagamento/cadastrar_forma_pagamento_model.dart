import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrar_forma_pagamento_widget.dart'
    show CadastrarFormaPagamentoWidget;
import 'package:flutter/material.dart';

class CadastrarFormaPagamentoModel
    extends FlutterFlowModel<CadastrarFormaPagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FormaPagamentoRecord? situacoes;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
