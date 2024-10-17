import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'alarme_widget.dart' show AlarmeWidget;
import 'package:flutter/material.dart';

class AlarmeModel extends FlutterFlowModel<AlarmeWidget> {
  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
