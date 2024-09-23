import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_parcelas_model.dart';
export 'empty_parcelas_model.dart';

class EmptyParcelasWidget extends StatefulWidget {
  const EmptyParcelasWidget({super.key});

  @override
  State<EmptyParcelasWidget> createState() => _EmptyParcelasWidgetState();
}

class _EmptyParcelasWidgetState extends State<EmptyParcelasWidget> {
  late EmptyParcelasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyParcelasModel());

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
              color: FlutterFlowTheme.of(context).tertiary,
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
                  'yg53feaz' /* Desculpe, não encontramos nenh... */,
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
