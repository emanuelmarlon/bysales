import '/flutter_flow/flutter_flow_util.dart';
import 'webhook_widget.dart' show WebhookWidget;
import 'package:flutter/material.dart';

class WebhookModel extends FlutterFlowModel<WebhookWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for cadastrarclient widget.
  FocusNode? cadastrarclientFocusNode;
  TextEditingController? cadastrarclientTextController;
  String? Function(BuildContext, String?)?
      cadastrarclientTextControllerValidator;
  // State field(s) for atualizarcliente widget.
  FocusNode? atualizarclienteFocusNode;
  TextEditingController? atualizarclienteTextController;
  String? Function(BuildContext, String?)?
      atualizarclienteTextControllerValidator;
  // State field(s) for cadastrarprodut widget.
  FocusNode? cadastrarprodutFocusNode;
  TextEditingController? cadastrarprodutTextController;
  String? Function(BuildContext, String?)?
      cadastrarprodutTextControllerValidator;
  // State field(s) for atualizarproduto widget.
  FocusNode? atualizarprodutoFocusNode;
  TextEditingController? atualizarprodutoTextController;
  String? Function(BuildContext, String?)?
      atualizarprodutoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    cadastrarclientFocusNode?.dispose();
    cadastrarclientTextController?.dispose();

    atualizarclienteFocusNode?.dispose();
    atualizarclienteTextController?.dispose();

    cadastrarprodutFocusNode?.dispose();
    cadastrarprodutTextController?.dispose();

    atualizarprodutoFocusNode?.dispose();
    atualizarprodutoTextController?.dispose();
  }
}
