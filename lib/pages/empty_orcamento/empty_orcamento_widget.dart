import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_orcamento_model.dart';
export 'empty_orcamento_model.dart';

class EmptyOrcamentoWidget extends StatefulWidget {
  const EmptyOrcamentoWidget({super.key});

  @override
  State<EmptyOrcamentoWidget> createState() => _EmptyOrcamentoWidgetState();
}

class _EmptyOrcamentoWidgetState extends State<EmptyOrcamentoWidget> {
  late EmptyOrcamentoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyOrcamentoModel());

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
          children: [
            Icon(
              Icons.error,
              color: FlutterFlowTheme.of(context).accent3,
              size: 130.0,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                FFLocalizations.of(context).getText(
                  '6ggkgty2' /* Desculpe, não encontramos nenh... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
