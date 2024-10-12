import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agendar_widget.dart' show AgendarWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AgendarModel extends FlutterFlowModel<AgendarWidget> {
  ///  Local state fields for this page.

  DateTime? data;

  int? id;

  String? string;

  String? audio;

  bool bloquear = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  // State field(s) for SwitchVibrar widget.
  bool? switchVibrarValue;
  // State field(s) for SwitchAudio widget.
  bool? switchAudioValue;
  // State field(s) for SliderVolume widget.
  double? sliderVolumeValue;
  DateTime? datePicked;

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
