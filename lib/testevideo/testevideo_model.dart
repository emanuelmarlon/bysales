import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testevideo_widget.dart' show TestevideoWidget;
import 'package:flutter/material.dart';

class TestevideoModel extends FlutterFlowModel<TestevideoWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? midia;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - convert] action in Button widget.
  String? base64;
  // Stores action output result for [Backend Call - API (nnbase)] action in Button widget.
  ApiCallResponse? apiResult840;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
