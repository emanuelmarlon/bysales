import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_produto_widget.dart' show AdicionarProdutoWidget;
import 'package:flutter/material.dart';

class AdicionarProdutoModel extends FlutterFlowModel<AdicionarProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ItensRecord? itens;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ItensRecord>? itensoma;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
