import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'agendar_model.dart';
export 'agendar_model.dart';

class AgendarWidget extends StatefulWidget {
  const AgendarWidget({super.key});

  @override
  State<AgendarWidget> createState() => _AgendarWidgetState();
}

class _AgendarWidgetState extends State<AgendarWidget> {
  late AgendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendarModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.switchVibrarValue = true;
    _model.switchAudioValue = true;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Agendamento',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if ((_model.data != null) &&
                        responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                dateTimeFormat(
                                  "dd/MM/yyyy HH:mm",
                                  _model.data,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'Data e hora',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Título do alarme...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.textController2,
                                focusNode: _model.textFieldFocusNode2,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Mensagem do alarme...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= 'Audio 1',
                                ),
                                options: const [
                                  'Audio 1',
                                  'Audio 2',
                                  'Audio 3',
                                  'Audio 4',
                                  'Audio 5'
                                ],
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.dropDownValue = val);
                                  if (_model.dropDownValue == 'Audio 1') {
                                    _model.audio = 'Audio1';
                                    safeSetState(() {});
                                    return;
                                  }
                                  if (_model.dropDownValue == 'Audio 2') {
                                    _model.audio = 'Audio2';
                                    safeSetState(() {});
                                    return;
                                  }
                                  if (_model.dropDownValue == 'Audio 3') {
                                    _model.audio = 'Audio3';
                                    safeSetState(() {});
                                  }
                                  if (_model.dropDownValue == 'Audio 4') {
                                    _model.audio = 'Audio4';
                                    safeSetState(() {});
                                    return;
                                  }
                                  if (_model.dropDownValue == 'Audio 5') {
                                    _model.audio = 'Audio5';
                                    safeSetState(() {});
                                    return;
                                  }
                                },
                                width: 200.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Escolha o toque...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                disabled: _model.bloquear == true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                          ),
                          if (_model.bloquear == false)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.dropDownValue == 'Audio 1') {
                                  _model.bloquear = true;
                                  safeSetState(() {});
                                  _model.soundPlayer1 ??= AudioPlayer();
                                  if (_model.soundPlayer1!.playing) {
                                    await _model.soundPlayer1!.stop();
                                  }
                                  _model.soundPlayer1!.setVolume(1.0);
                                  _model.soundPlayer1!
                                      .setAsset('assets/audios/alarm.mp3')
                                      .then((_) => _model.soundPlayer1!.play());

                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 2') {
                                  _model.soundPlayer2 ??= AudioPlayer();
                                  if (_model.soundPlayer2!.playing) {
                                    await _model.soundPlayer2!.stop();
                                  }
                                  _model.soundPlayer2!.setVolume(1.0);
                                  _model.soundPlayer2!
                                      .setAsset('assets/audios/alarm1.mp3')
                                      .then((_) => _model.soundPlayer2!.play());

                                  _model.bloquear = true;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 3') {
                                  _model.soundPlayer3 ??= AudioPlayer();
                                  if (_model.soundPlayer3!.playing) {
                                    await _model.soundPlayer3!.stop();
                                  }
                                  _model.soundPlayer3!.setVolume(1.0);
                                  _model.soundPlayer3!
                                      .setAsset('assets/audios/alarm2.mp3')
                                      .then((_) => _model.soundPlayer3!.play());

                                  _model.bloquear = true;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 4') {
                                  _model.soundPlayer4 ??= AudioPlayer();
                                  if (_model.soundPlayer4!.playing) {
                                    await _model.soundPlayer4!.stop();
                                  }
                                  _model.soundPlayer4!.setVolume(1.0);
                                  _model.soundPlayer4!
                                      .setAsset('assets/audios/alarm3.mp3')
                                      .then((_) => _model.soundPlayer4!.play());

                                  _model.bloquear = true;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 5') {
                                  _model.soundPlayer5 ??= AudioPlayer();
                                  if (_model.soundPlayer5!.playing) {
                                    await _model.soundPlayer5!.stop();
                                  }
                                  _model.soundPlayer5!.setVolume(1.0);
                                  _model.soundPlayer5!
                                      .setAsset('assets/audios/alarm4.mp3')
                                      .then((_) => _model.soundPlayer5!.play());

                                  _model.bloquear = true;
                                  safeSetState(() {});
                                  return;
                                }
                              },
                              child: FaIcon(
                                FontAwesomeIcons.play,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              ),
                            ),
                          if (_model.bloquear == true)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.dropDownValue == 'Audio 1') {
                                  _model.soundPlayer1?.stop();
                                  _model.bloquear = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 2') {
                                  _model.soundPlayer2?.stop();
                                  _model.bloquear = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 3') {
                                  _model.soundPlayer3?.stop();
                                  _model.bloquear = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 4') {
                                  _model.soundPlayer4?.stop();
                                  _model.bloquear = false;
                                  safeSetState(() {});
                                  return;
                                }
                                if (_model.dropDownValue == 'Audio 5') {
                                  _model.soundPlayer5?.stop();
                                  _model.bloquear = false;
                                  safeSetState(() {});
                                  return;
                                }
                              },
                              child: FaIcon(
                                FontAwesomeIcons.stop,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Vibrar',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Switch.adaptive(
                            value: _model.switchVibrarValue!,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.switchVibrarValue = newValue);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loop de Audio',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Switch.adaptive(
                            value: _model.switchAudioValue!,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.switchAudioValue = newValue);
                            },
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Volume',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          SliderTheme(
                            data: const SliderThemeData(
                              showValueIndicator: ShowValueIndicator.always,
                            ),
                            child: Slider(
                              activeColor: FlutterFlowTheme.of(context).primary,
                              inactiveColor:
                                  FlutterFlowTheme.of(context).alternate,
                              min: 0.0,
                              max: 1.0,
                              value: _model.sliderVolumeValue ??= 0.5,
                              label:
                                  _model.sliderVolumeValue?.toStringAsFixed(2),
                              onChanged: (newValue) {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(2));
                                safeSetState(
                                    () => _model.sliderVolumeValue = newValue);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 20.0, 8.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: FFButtonWidget(
                              onPressed: () async {
                                await actions.solicitarPermissao();
                                final datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                      pickerBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      pickerForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      selectedDateTimeBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                TimeOfDay? datePickedTime;
                                if (datePickedDate != null) {
                                  datePickedTime = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.fromDateTime(
                                        getCurrentTimestamp),
                                    builder: (context, child) {
                                      return wrapInMaterialTimePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Inter Tight',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );
                                }

                                if (datePickedDate != null &&
                                    datePickedTime != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      datePickedDate.year,
                                      datePickedDate.month,
                                      datePickedDate.day,
                                      datePickedTime!.hour,
                                      datePickedTime.minute,
                                    );
                                  });
                                }
                                if (!(_model.datePicked != null)) {
                                  return;
                                }
                                _model.data = _model.datePicked;
                                safeSetState(() {});
                                _model.id = valueOrDefault<int>(
                                  random_data.randomInteger(1, 1000),
                                  1,
                                );
                                safeSetState(() {});
                                FFAppState().addToAlarme(AlarmeStruct(
                                  data: _model.datePicked,
                                  titulo: valueOrDefault<String>(
                                    _model.textController1.text,
                                    'Alarme',
                                  ),
                                  mensagem: valueOrDefault<String>(
                                    _model.textController2.text,
                                    'Disparando alarme.',
                                  ),
                                  vibrar: _model.switchVibrarValue,
                                  volume: _model.sliderVolumeValue,
                                  loop: _model.switchAudioValue,
                                  id: valueOrDefault<int>(
                                    _model.id,
                                    1,
                                  ),
                                ));
                                FFAppState().update(() {});
                                await actions.alarme(
                                  _model.data!,
                                  _model.id!,
                                  valueOrDefault<String>(
                                    _model.textController1.text,
                                    'Alarme',
                                  ),
                                  valueOrDefault<String>(
                                    _model.textController2.text,
                                    'Disparando alarme.',
                                  ),
                                  _model.switchAudioValue!,
                                  _model.switchVibrarValue!,
                                  _model.sliderVolumeValue!,
                                  valueOrDefault<String>(
                                    () {
                                      if (_model.dropDownValue == 'Audio 1') {
                                        return 'assets/audios/alarm.mp3';
                                      } else if (_model.dropDownValue ==
                                          'Audio 2') {
                                        return 'assets/audios/alarm1.mp3';
                                      } else if (_model.dropDownValue ==
                                          'Audio 3') {
                                        return 'assets/audios/alarm2.mp3';
                                      } else if (_model.dropDownValue ==
                                          'Audio 4') {
                                        return 'assets/audios/alarm3.mp3';
                                      } else if (_model.dropDownValue ==
                                          'Audio 5') {
                                        return 'assets/audios/alarm4.mp3';
                                      } else {
                                        return 'assets/audios/alarm.mp3';
                                      }
                                    }(),
                                    'assets/audios/alarm.mp3',
                                  ),
                                );
                                await actions.apagarTela();
                                context.safePop();
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Alarme agendado com sucesso.',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 3000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                );
                              },
                              text: 'Agendar alarme',
                              options: FFButtonOptions(
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/botao.jpg',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
