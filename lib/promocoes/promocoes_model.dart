import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'promocoes_widget.dart' show PromocoesWidget;
import 'package:flutter/material.dart';

class PromocoesModel extends FlutterFlowModel<PromocoesWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> listaUsuarios = [];
  void addToListaUsuarios(DocumentReference item) => listaUsuarios.add(item);
  void removeFromListaUsuarios(DocumentReference item) =>
      listaUsuarios.remove(item);
  void removeAtIndexFromListaUsuarios(int index) =>
      listaUsuarios.removeAt(index);
  void insertAtIndexInListaUsuarios(int index, DocumentReference item) =>
      listaUsuarios.insert(index, item);
  void updateListaUsuariosAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      listaUsuarios[index] = updateFn(listaUsuarios[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap = {};
  List<UsersRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
