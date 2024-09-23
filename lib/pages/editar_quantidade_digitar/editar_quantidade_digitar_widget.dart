import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'editar_quantidade_digitar_model.dart';
export 'editar_quantidade_digitar_model.dart';

class EditarQuantidadeDigitarWidget extends StatefulWidget {
  const EditarQuantidadeDigitarWidget({
    super.key,
    required this.pedido,
    required this.pedidoRef,
    required this.produtoRef,
    required this.produtoDoc,
    required this.quantidade,
  });

  final PedidosRecord? pedido;
  final DocumentReference? pedidoRef;
  final DocumentReference? produtoRef;
  final ProdutosRecord? produtoDoc;
  final int? quantidade;

  @override
  State<EditarQuantidadeDigitarWidget> createState() =>
      _EditarQuantidadeDigitarWidgetState();
}

class _EditarQuantidadeDigitarWidgetState
    extends State<EditarQuantidadeDigitarWidget> {
  late EditarQuantidadeDigitarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarQuantidadeDigitarModel());

    _model.textController ??=
        TextEditingController(text: widget.quantidade?.toString());
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Container(
                    width: 150.0,
                    height: 210.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 2.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl: widget.produtoDoc!.imagem,
                        width: 150.0,
                        height: 210.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'fpmdpend' /* Quantidade... */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                              inputFormatters: [_model.textFieldMask],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          var shouldSetState = false;
                          if (functions.verificaQuantidade(
                              _model.textController.text)!) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('By.Sales'),
                                  content: const Text('Quantidade não permitida.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }
                          if (_model.textController.text == '') {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('By.Sales'),
                                  content: const Text('Digite a quantidade'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }
                          _model.alterarQuantidade2 =
                              await queryItensRecordOnce(
                            parent: widget.pedidoRef,
                            queryBuilder: (itensRecord) => itensRecord.where(
                              'referenciaProduto',
                              isEqualTo: widget.produtoDoc?.reference,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          shouldSetState = true;

                          await _model.alterarQuantidade2!.reference
                              .update(createItensRecordData(
                            quantidade:
                                int.tryParse(_model.textController.text),
                            total: int.parse(_model.textController.text) *
                                widget.produtoDoc!.tabela1,
                          ));
                          _model.itensoma = await queryItensRecordOnce(
                            parent: widget.pedidoRef,
                          );
                          shouldSetState = true;

                          await widget.pedidoRef!.update({
                            ...createPedidosRecordData(
                              total: valueOrDefault<double>(
                                functions
                                    .somarTotalItens(_model.itensoma?.toList()),
                                0.0,
                              ),
                              subtotal: valueOrDefault<double>(
                                functions
                                    .somarTotalItens(_model.itensoma?.toList()),
                                0.0,
                              ),
                              desconto: 0.0,
                              descontoReais: 0.0,
                              pussueParcela: false,
                            ),
                            ...mapToFirestore(
                              {
                                'formaPagamento': FieldValue.delete(),
                              },
                            ),
                          });
                          await actions.apagarParcelas(
                            widget.pedidoRef,
                          );
                          context.safePop();
                          if (shouldSetState) safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'vhlm0jo1' /* Editar */,
                        ),
                        options: FFButtonOptions(
                          width: 160.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.safePop();
                        },
                        text: FFLocalizations.of(context).getText(
                          'p3kwejwy' /* Cancelar */,
                        ),
                        options: FFButtonOptions(
                          width: 160.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
