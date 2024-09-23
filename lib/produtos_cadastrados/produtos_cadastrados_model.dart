import '/flutter_flow/flutter_flow_util.dart';
import 'produtos_cadastrados_widget.dart' show ProdutosCadastradosWidget;
import 'package:flutter/material.dart';

class ProdutosCadastradosModel
    extends FlutterFlowModel<ProdutosCadastradosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
