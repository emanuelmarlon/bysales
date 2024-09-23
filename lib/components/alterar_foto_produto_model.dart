import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_foto_produto_widget.dart' show AlterarFotoProdutoWidget;
import 'package:flutter/material.dart';

class AlterarFotoProdutoModel
    extends FlutterFlowModel<AlterarFotoProdutoWidget> {
  ///  Local state fields for this component.

  String url = '';

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
