import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_foto_user_widget.dart' show AlterarFotoUserWidget;
import 'package:flutter/material.dart';

class AlterarFotoUserModel extends FlutterFlowModel<AlterarFotoUserWidget> {
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
