import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_usuario_widget.dart' show CadastroUsuarioWidget;
import 'package:flutter/material.dart';

class CadastroUsuarioModel extends FlutterFlowModel<CadastroUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? usuarioget;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    emailTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController?.dispose();
  }
}
