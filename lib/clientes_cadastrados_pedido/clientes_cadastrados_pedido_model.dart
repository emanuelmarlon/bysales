import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clientes_cadastrados_pedido_widget.dart'
    show ClientesCadastradosPedidoWidget;
import 'package:flutter/material.dart';

class ClientesCadastradosPedidoModel
    extends FlutterFlowModel<ClientesCadastradosPedidoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  EmpresasRecord? contadorOrcamento;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  PedidosRecord? orcamento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
