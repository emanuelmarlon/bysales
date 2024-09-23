import '/flutter_flow/flutter_flow_util.dart';
import 'pedidos_widget.dart' show PedidosWidget;
import 'package:flutter/material.dart';

class PedidosModel extends FlutterFlowModel<PedidosWidget> {
  ///  Local state fields for this page.

  bool ocultar = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future atualizar(BuildContext context) async {}
}
