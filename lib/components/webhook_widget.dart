import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'webhook_model.dart';
export 'webhook_model.dart';

class WebhookWidget extends StatefulWidget {
  const WebhookWidget({
    super.key,
    required this.empresa,
    required this.empresaDoc,
  });

  final DocumentReference? empresa;
  final EmpresasRecord? empresaDoc;

  @override
  State<WebhookWidget> createState() => _WebhookWidgetState();
}

class _WebhookWidgetState extends State<WebhookWidget>
    with TickerProviderStateMixin {
  late WebhookModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebhookModel());

    _model.textController1 ??=
        TextEditingController(text: widget.empresaDoc?.urlWebhook);
    _model.textFieldFocusNode ??= FocusNode();

    _model.cadastrarclientTextController ??=
        TextEditingController(text: widget.empresaDoc?.urlWebhookCriarCliente);
    _model.cadastrarclientFocusNode ??= FocusNode();

    _model.atualizarclienteTextController ??= TextEditingController(
        text: widget.empresaDoc?.urlWebhookAtualizarCliente);
    _model.atualizarclienteFocusNode ??= FocusNode();

    _model.cadastrarprodutTextController ??=
        TextEditingController(text: widget.empresaDoc?.urlWebhookCriarProduto);
    _model.cadastrarprodutFocusNode ??= FocusNode();

    _model.atualizarprodutoTextController ??= TextEditingController(
        text: widget.empresaDoc?.urlWebhookAtualizarProduto);
    _model.atualizarprodutoFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 370.0,
        height: 800.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          boxShadow: const [
            BoxShadow(
              blurRadius: 6.0,
              color: Color(0x4B1A1F24),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 18.0),
                  child: Icon(
                    Icons.webhook_sharp,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 58.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation']!),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'if5wm5xx' /* Wrl para notificações de pedid... */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                    hintStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  maxLines: 3,
                  cursorColor: FlutterFlowTheme.of(context).secondary,
                  validator:
                      _model.textController1Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 14.0, 8.0, 0.0),
                child: TextFormField(
                  controller: _model.cadastrarclientTextController,
                  focusNode: _model.cadastrarclientFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'jm4k2bw4' /* Wrl para notificações de novos... */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                    hintStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  maxLines: 3,
                  cursorColor: FlutterFlowTheme.of(context).secondary,
                  validator: _model.cadastrarclientTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 14.0, 8.0, 0.0),
                child: TextFormField(
                  controller: _model.atualizarclienteTextController,
                  focusNode: _model.atualizarclienteFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      '8ijxwu2h' /* Wrl para notificações de clien... */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                    hintStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  maxLines: 3,
                  cursorColor: FlutterFlowTheme.of(context).secondary,
                  validator: _model.atualizarclienteTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 14.0, 8.0, 0.0),
                child: TextFormField(
                  controller: _model.cadastrarprodutTextController,
                  focusNode: _model.cadastrarprodutFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'jl2x7f67' /* Wrl para notificações de novos... */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                    hintStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  maxLines: 3,
                  cursorColor: FlutterFlowTheme.of(context).secondary,
                  validator: _model.cadastrarprodutTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 14.0, 8.0, 0.0),
                child: TextFormField(
                  controller: _model.atualizarprodutoTextController,
                  focusNode: _model.atualizarprodutoFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'lbohvani' /* Wrl para notificações de  prod... */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                    hintStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  maxLines: 3,
                  cursorColor: FlutterFlowTheme.of(context).secondary,
                  validator: _model.atualizarprodutoTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.safePop();
                          },
                          text: FFLocalizations.of(context).getText(
                            'jit28h0c' /* Sair */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await widget.empresa!
                                .update(createEmpresasRecordData(
                              urlWebhook: _model.textController1.text,
                              urlWebhookAtualizarCliente:
                                  _model.atualizarclienteTextController.text,
                              urlWebhookCriarProduto:
                                  _model.cadastrarprodutTextController.text,
                              urlWebhookAtualizarProduto:
                                  _model.atualizarprodutoTextController.text,
                              urlWebhookCriarCliente:
                                  _model.cadastrarclientTextController.text,
                            ));
                            context.safePop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'SALVO COM SUCESSO.',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'syrkihbs' /* Salvar */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
