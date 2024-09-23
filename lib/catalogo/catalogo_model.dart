import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'catalogo_widget.dart' show CatalogoWidget;
import 'package:flutter/material.dart';

class CatalogoModel extends FlutterFlowModel<CatalogoWidget> {
  ///  Local state fields for this page.

  bool ocultar = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in menuItem widget.
  ItensRecord? resultado;
  // Stores action output result for [Firestore Query - Query a collection] action in menuItem widget.
  ItensRecord? item;
  // Stores action output result for [Firestore Query - Query a collection] action in menuItem widget.
  List<ItensRecord>? itensoma;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
