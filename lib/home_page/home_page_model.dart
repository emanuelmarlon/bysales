import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchVibrar widget.
  bool? switchVibrarValue;
  // State field(s) for SwitchAudio widget.
  bool? switchAudioValue;
  // State field(s) for SliderVolume widget.
  double? sliderVolumeValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
