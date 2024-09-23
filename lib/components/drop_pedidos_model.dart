import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'drop_pedidos_widget.dart' show DropPedidosWidget;
import 'package:flutter/material.dart';

class DropPedidosModel extends FlutterFlowModel<DropPedidosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Stores action output result for [Firestore Query - Query a collection] action in convertComponent widget.
  List<ItensRecord>? resultado;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  EmpresasRecord? numeroOrcamento;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  PedidosRecord? pedido;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
