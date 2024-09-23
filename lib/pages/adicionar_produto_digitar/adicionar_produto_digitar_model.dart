import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_produto_digitar_widget.dart'
    show AdicionarProdutoDigitarWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AdicionarProdutoDigitarModel
    extends FlutterFlowModel<AdicionarProdutoDigitarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '#######');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ItensRecord? itens;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ItensRecord>? itensoma;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
