import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_orcamento_widget.dart' show NovoOrcamentoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class NovoOrcamentoModel extends FlutterFlowModel<NovoOrcamentoWidget> {
  ///  Local state fields for this page.

  bool parcela = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ItensRecord>? resultado;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
