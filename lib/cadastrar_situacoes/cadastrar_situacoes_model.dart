import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrar_situacoes_widget.dart' show CadastrarSituacoesWidget;
import 'package:flutter/material.dart';

class CadastrarSituacoesModel
    extends FlutterFlowModel<CadastrarSituacoesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Color? colorPicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SituacoesRecord? situacoes;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
