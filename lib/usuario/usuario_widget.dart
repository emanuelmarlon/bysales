import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/alterar_foto_user_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'usuario_model.dart';
export 'usuario_model.dart';

class UsuarioWidget extends StatefulWidget {
  const UsuarioWidget({
    super.key,
    required this.usuario,
    required this.usuarioDoc,
  });

  final DocumentReference? usuario;
  final UsersRecord? usuarioDoc;

  @override
  State<UsuarioWidget> createState() => _UsuarioWidgetState();
}

class _UsuarioWidgetState extends State<UsuarioWidget> {
  late UsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsuarioModel());

    _model.switchValue1 = widget.usuarioDoc!.master;
    _model.switchValue2 = widget.usuarioDoc!.ativo;
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
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).accent4,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: AlterarFotoUserWidget(
                                user: widget.usuarioDoc!.reference,
                                userDoc: widget.usuarioDoc!,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl: valueOrDefault<String>(
                          widget.usuarioDoc?.photoUrl,
                          'Imagem',
                        ),
                        fit: BoxFit.cover,
                        errorWidget: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/error_image.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 12.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.usuarioDoc?.displayName,
                          'Nome',
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).accent4,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                valueOrDefault<String>(
                  widget.usuarioDoc?.email,
                  'E-mail',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).accent4,
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 32.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'editarUsuario',
                            queryParameters: {
                              'usuario': serializeParam(
                                widget.usuario,
                                ParamType.DocumentReference,
                              ),
                              'usuarioDoc': serializeParam(
                                widget.usuarioDoc,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'usuarioDoc': widget.usuarioDoc,
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Container(
                                width: 44.0,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.edit,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'blk4cd4y' /* Editar */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Container(
                                width: 44.0,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'v2i2lnvo' /* Notificações */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -1.0,
                        ),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'wcxuivv0' /* Informações */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 16.0, 8.0),
                                      child: Icon(
                                        Icons.phone,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '2zy4keoh' /* Telefone */,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.usuarioDoc?.phoneNumber,
                                        'Telefone',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              if (widget.usuarioDoc?.email != currentUserEmail)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 16.0, 8.0),
                                        child: Icon(
                                          Icons.person,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'pjeaumcy' /* Master */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Switch.adaptive(
                                        value: _model.switchValue1!,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.switchValue1 = newValue);
                                          if (newValue) {
                                            await widget.usuario!
                                                .update(createUsersRecordData(
                                              master: _model.switchValue1,
                                            ));
                                          } else {
                                            await widget.usuario!
                                                .update(createUsersRecordData(
                                              master: _model.switchValue1,
                                            ));
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        activeTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        inactiveTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                    ],
                                  ),
                                ),
                              if (widget.usuarioDoc?.email != currentUserEmail)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 16.0, 8.0),
                                        child: Icon(
                                          Icons.person,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'm84xj74i' /* Ativo */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Switch.adaptive(
                                        value: _model.switchValue2!,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.switchValue2 = newValue);
                                          if (newValue) {
                                            await widget.usuario!
                                                .update(createUsersRecordData(
                                              ativo: _model.switchValue2,
                                            ));
                                          } else {
                                            await widget.usuario!
                                                .update(createUsersRecordData(
                                              ativo: _model.switchValue2,
                                            ));
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        activeTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        inactiveTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
