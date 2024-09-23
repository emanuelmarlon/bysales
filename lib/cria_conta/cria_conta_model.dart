import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cria_conta_widget.dart' show CriaContaWidget;
import 'package:flutter/material.dart';

class CriaContaModel extends FlutterFlowModel<CriaContaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EmpresasRecord? empresas;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SituacoesRecord? situacoes1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SituacoesRecord? situacoes2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SituacoesRecord? situacoes3;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
