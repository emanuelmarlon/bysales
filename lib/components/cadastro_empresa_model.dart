import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_empresa_widget.dart' show CadastroEmpresaWidget;
import 'package:flutter/material.dart';

class CadastroEmpresaModel extends FlutterFlowModel<CadastroEmpresaWidget> {
  ///  State fields for stateful widgets in this component.

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
