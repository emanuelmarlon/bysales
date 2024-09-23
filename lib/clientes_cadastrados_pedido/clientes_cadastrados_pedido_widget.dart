import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/empty/empty_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'clientes_cadastrados_pedido_model.dart';
export 'clientes_cadastrados_pedido_model.dart';

class ClientesCadastradosPedidoWidget extends StatefulWidget {
  const ClientesCadastradosPedidoWidget({super.key});

  @override
  State<ClientesCadastradosPedidoWidget> createState() =>
      _ClientesCadastradosPedidoWidgetState();
}

class _ClientesCadastradosPedidoWidgetState
    extends State<ClientesCadastradosPedidoWidget>
    with TickerProviderStateMixin {
  late ClientesCadastradosPedidoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesCadastradosPedidoModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'i2ygz5qm' /* Clientes */,
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 14.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('cadastrarCliente');
                },
                child: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 36.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.textController',
                    const Duration(milliseconds: 1),
                    () => safeSetState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelText: FFLocalizations.of(context).getText(
                      'ni040b6z' /* Buscar clientes... */,
                    ),
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
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
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  maxLines: null,
                  cursorColor: FlutterFlowTheme.of(context).secondary,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => StreamBuilder<List<ClientesRecord>>(
                      stream: queryClientesRecord(
                        queryBuilder: (clientesRecord) => clientesRecord
                            .where(
                              'users',
                              isEqualTo: currentUserDocument?.refPrincipal,
                            )
                            .orderBy('razaoSocial'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ClientesRecord> listViewClientesRecordList =
                            snapshot.data!;
                        if (listViewClientesRecordList.isEmpty) {
                          return const Center(
                            child: EmptyWidget(),
                          );
                        }

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewClientesRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewClientesRecord =
                                listViewClientesRecordList[listViewIndex];
                            return Visibility(
                              visible: functions.pesquisa2campos(
                                      _model.textController.text,
                                      listViewClientesRecord.razaoSocial,
                                      listViewClientesRecord.cnpjcpf) ??
                                  true,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var shouldSetState = false;
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('By.Sales'),
                                                  content: Text(
                                                      'Criar um novo orçamento para o cliente ${listViewClientesRecord.razaoSocial}?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: const Text('Cancelar'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: const Text(
                                                          'Criar orçamento'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      _model.contadorOrcamento =
                                          await EmpresasRecord.getDocumentOnce(
                                              currentUserDocument!.empresas!);
                                      shouldSetState = true;
                                    } else {
                                      if (shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    var pedidosRecordReference =
                                        PedidosRecord.collection.doc();
                                    await pedidosRecordReference
                                        .set(createPedidosRecordData(
                                      razaoSocial:
                                          listViewClientesRecord.razaoSocial,
                                      cnpjcpf: listViewClientesRecord.cnpjcpf,
                                      telefone: listViewClientesRecord.telefone,
                                      email: listViewClientesRecord.email,
                                      endereco: listViewClientesRecord.endereco,
                                      cidade: listViewClientesRecord.cidade,
                                      estado: listViewClientesRecord.estado,
                                      numero: listViewClientesRecord.numero,
                                      bairro: listViewClientesRecord.bairro,
                                      cep: listViewClientesRecord.cep,
                                      users: currentUserReference,
                                      fantasia: listViewClientesRecord.fantasia,
                                      empresa: currentUserDocument?.empresas,
                                      inscricaoEstadual: listViewClientesRecord
                                          .inscricaoEstadual,
                                      data: getCurrentTimestamp,
                                      situacao: 'Em orçamento',
                                      numeroPedido: _model.contadorOrcamento!
                                              .contadorOrcamento +
                                          1,
                                      vendedor:
                                          functions.extrairPrimeiroSegundoNome(
                                              currentUserDisplayName),
                                      corSituao:
                                          FlutterFlowTheme.of(context).primary,
                                      url: _model.contadorOrcamento?.urlWebhook,
                                      clienteRef:
                                          listViewClientesRecord.reference,
                                      pussueParcela: false,
                                    ));
                                    _model.orcamento =
                                        PedidosRecord.getDocumentFromData(
                                            createPedidosRecordData(
                                              razaoSocial:
                                                  listViewClientesRecord
                                                      .razaoSocial,
                                              cnpjcpf: listViewClientesRecord
                                                  .cnpjcpf,
                                              telefone: listViewClientesRecord
                                                  .telefone,
                                              email:
                                                  listViewClientesRecord.email,
                                              endereco: listViewClientesRecord
                                                  .endereco,
                                              cidade:
                                                  listViewClientesRecord.cidade,
                                              estado:
                                                  listViewClientesRecord.estado,
                                              numero:
                                                  listViewClientesRecord.numero,
                                              bairro:
                                                  listViewClientesRecord.bairro,
                                              cep: listViewClientesRecord.cep,
                                              users: currentUserReference,
                                              fantasia: listViewClientesRecord
                                                  .fantasia,
                                              empresa:
                                                  currentUserDocument?.empresas,
                                              inscricaoEstadual:
                                                  listViewClientesRecord
                                                      .inscricaoEstadual,
                                              data: getCurrentTimestamp,
                                              situacao: 'Em orçamento',
                                              numeroPedido: _model
                                                      .contadorOrcamento!
                                                      .contadorOrcamento +
                                                  1,
                                              vendedor: functions
                                                  .extrairPrimeiroSegundoNome(
                                                      currentUserDisplayName),
                                              corSituao:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              url: _model.contadorOrcamento
                                                  ?.urlWebhook,
                                              clienteRef: listViewClientesRecord
                                                  .reference,
                                              pussueParcela: false,
                                            ),
                                            pedidosRecordReference);
                                    shouldSetState = true;

                                    await currentUserDocument!.empresas!
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'contadorOrcamento':
                                              FieldValue.increment(1),
                                        },
                                      ),
                                    });
                                    context.safePop();

                                    context.pushNamed(
                                      'novoOrcamento',
                                      queryParameters: {
                                        'pedido': serializeParam(
                                          _model.orcamento?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );

                                    if (shouldSetState) safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: const Offset(
                                            0.0,
                                            1.0,
                                          ),
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  const Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  const Duration(milliseconds: 500),
                                              imageUrl:
                                                  listViewClientesRecord.imagem,
                                              width: 60.0,
                                              height: 60.0,
                                              fit: BoxFit.cover,
                                              errorWidget: (context, error,
                                                      stackTrace) =>
                                                  Image.asset(
                                                'assets/images/error_image.jpg',
                                                width: 60.0,
                                                height: 60.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    listViewClientesRecord
                                                        .razaoSocial,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            listViewClientesRecord
                                                                .cnpjcpf,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
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
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Icon(
                                                Icons
                                                    .keyboard_arrow_right_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
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
