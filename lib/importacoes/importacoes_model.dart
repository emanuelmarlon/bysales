import '/flutter_flow/flutter_flow_util.dart';
import 'importacoes_widget.dart' show ImportacoesWidget;
import 'package:flutter/material.dart';

class ImportacoesModel extends FlutterFlowModel<ImportacoesWidget> {
  ///  Local state fields for this page.

  Color? cor;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
