import '/flutter_flow/flutter_flow_util.dart';
import 'usuarios_cadastrados_widget.dart' show UsuariosCadastradosWidget;
import 'package:flutter/material.dart';

class UsuariosCadastradosModel
    extends FlutterFlowModel<UsuariosCadastradosWidget> {
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
