import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/adicionar_produto_digitar/adicionar_produto_digitar_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'adicionar_produto_model.dart';
export 'adicionar_produto_model.dart';

class AdicionarProdutoWidget extends StatefulWidget {
  const AdicionarProdutoWidget({
    super.key,
    required this.pedido,
    required this.pedidoRef,
    required this.produtoRef,
    required this.produtoDoc,
  });

  final PedidosRecord? pedido;
  final DocumentReference? pedidoRef;
  final DocumentReference? produtoRef;
  final ProdutosRecord? produtoDoc;

  @override
  State<AdicionarProdutoWidget> createState() => _AdicionarProdutoWidgetState();
}

class _AdicionarProdutoWidgetState extends State<AdicionarProdutoWidget> {
  late AdicionarProdutoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdicionarProdutoModel());

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
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: AdicionarProdutoDigitarWidget(
                                pedido: widget.pedido!,
                                pedidoRef: widget.pedidoRef!,
                                produtoRef: widget.produtoRef!,
                                produtoDoc: widget.produtoDoc!,
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: FaIcon(
                        FontAwesomeIcons.keyboard,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 50.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 160.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.minus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).secondaryText
                                : FlutterFlowTheme.of(context).alternate,
                            size: 20.0,
                          ),
                          incrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.plus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).primaryText
                                : FlutterFlowTheme.of(context).alternate,
                            size: 20.0,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          count: _model.countControllerValue ??= 1,
                          updateCount: (count) => safeSetState(
                              () => _model.countControllerValue = count),
                          stepSize: 1,
                          minimum: 1,
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
                          var itensRecordReference =
                              ItensRecord.createDoc(widget.pedidoRef!);
                          await itensRecordReference.set(createItensRecordData(
                            referenciaProduto: widget.produtoRef,
                            quantidade: _model.countControllerValue,
                            preco: widget.produtoDoc?.tabela1,
                            descricao: widget.produtoDoc?.descricao,
                            sku: widget.produtoDoc?.sku,
                            numeroPedido: widget.pedido?.numero,
                            total: (_model.countControllerValue!) *
                                widget.produtoDoc!.tabela1,
                          ));
                          _model.itens = ItensRecord.getDocumentFromData(
                              createItensRecordData(
                                referenciaProduto: widget.produtoRef,
                                quantidade: _model.countControllerValue,
                                preco: widget.produtoDoc?.tabela1,
                                descricao: widget.produtoDoc?.descricao,
                                sku: widget.produtoDoc?.sku,
                                numeroPedido: widget.pedido?.numero,
                                total: (_model.countControllerValue!) *
                                    widget.produtoDoc!.tabela1,
                              ),
                              itensRecordReference);
                          _model.itensoma = await queryItensRecordOnce(
                            parent: widget.pedidoRef,
                          );

                          await _model.itens!.parentReference.update({
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

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'b9sx7yvm' /* Adicionar */,
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
                          'ixjxll0j' /* Cancelar */,
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
