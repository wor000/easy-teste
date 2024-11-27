import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'componente_trato_gastro_intestinal_model.dart';
export 'componente_trato_gastro_intestinal_model.dart';

class ComponenteTratoGastroIntestinalWidget extends StatefulWidget {
  const ComponenteTratoGastroIntestinalWidget({super.key});

  @override
  State<ComponenteTratoGastroIntestinalWidget> createState() =>
      _ComponenteTratoGastroIntestinalWidgetState();
}

class _ComponenteTratoGastroIntestinalWidgetState
    extends State<ComponenteTratoGastroIntestinalWidget> {
  late ComponenteTratoGastroIntestinalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponenteTratoGastroIntestinalModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 300.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 24.0, 10.0, 24.0),
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF16712),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'TRATO GASTROINTESTINAL',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(48.0, 16.0, 48.0, 0.0),
                    child: Text(
                      'TRATO GASTROINTESTINAL',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(48.0, 8.0, 48.0, 48.0),
                  child: Text(
                    'Estômago com moderada quantidade de conteúdo alimentar e gás. Parede normoespessa e preservação da estratificação das camadas. Peristaltismo preservado e evolutivo.\n\nAlças intestinais com moderada quantidade de conteúdo apresentando parede normoespessa de acordo com o segmento examinado e preservação da estratificação das camadas. Peristaltismo preservado e evolutivo.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
