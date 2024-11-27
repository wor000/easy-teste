import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modal_ver_usar_modelo_model.dart';
export 'modal_ver_usar_modelo_model.dart';

class ModalVerUsarModeloWidget extends StatefulWidget {
  const ModalVerUsarModeloWidget({
    super.key,
    int? id,
    String? conteudoLaudo,
    String? titulo,
  })  : id = id ?? 0,
        conteudoLaudo = conteudoLaudo ?? 'Sem dados',
        titulo = titulo ?? 'Sem título';

  final int id;
  final String conteudoLaudo;
  final String titulo;

  @override
  State<ModalVerUsarModeloWidget> createState() =>
      _ModalVerUsarModeloWidgetState();
}

class _ModalVerUsarModeloWidgetState extends State<ModalVerUsarModeloWidget> {
  late ModalVerUsarModeloModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalVerUsarModeloModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: FutureBuilder<List<UsersRow>>(
        future: UsersTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            currentUserUid,
          ),
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
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<UsersRow> containerUsersRowList = snapshot.data!;

          return Container(
            width: 889.0,
            height: 722.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.titulo,
                                    'Sem título',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF515860),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlutterFlowWebView(
                          content: widget.conteudoLaudo,
                          height: 556.0,
                          verticalScroll: false,
                          horizontalScroll: false,
                          html: true,
                        ),
                        if (widget.id > 0)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'CANCELAR',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFB8B8B8),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().cabecalhoAssinaturaPDF =
                                          '<html>   <head>      <style>            body {            font-family: \'Nunito Sans\', sans-serif;                 }        p {   margin-block-end: 0.5em;    margin-block-start: 0.5em;        }                        .page {        margin-top: 23px;       page-break-after: always;    width: 100%;    height: 100vh;    padding: 0px;    box-sizing: border-box;    display: grid;    grid-template-columns: repeat(2, 310px);    grid-auto-rows: 300px;    justify-content: center;    row-gap: 60px;        }        .image-container {            width: 300px;            height: 300px;            display: flex;            align-items: center;            justify-content: center;            border-radius: 8px;            overflow: hidden;                    }        .image-container img {            max-width: 100%;             max-height: 100%;         }    </style>   </head>   <body>      <div style=\"display: flex; justify-content: space-between; align-items: center; padding: 10px 20px;    margin: 0 auto;\"> <img src=\"${valueOrDefault<String>(
                                        containerUsersRowList.first.marcaUrl,
                                        'https://lowtykdaezuwtgykrqzw.supabase.co/storage/v1/object/public/imagens_padrao/atualizarimagem.jpg',
                                      )}\" style=\"height: 50px; width: auto;\"><div style=\"flex: 1;text-align: center;font-size: 10px;padding-left: 20px;padding-right: 20px;\">    <strong>${valueOrDefault<String>(
                                        containerUsersRowList
                                            .first.cabecalhoLaudo,
                                        'Sem dados',
                                      )}</strong><br>${valueOrDefault<String>(
                                        containerUsersRowList
                                            .first.infAdicional,
                                        'Sem dados',
                                      )}<br>${valueOrDefault<String>(
                                        containerUsersRowList.first.redeSocial,
                                        'Sem dados',
                                      )}</div><img src=\"${valueOrDefault<String>(
                                        containerUsersRowList
                                            .first.assinaturaUrl,
                                        'https://lowtykdaezuwtgykrqzw.supabase.co/storage/v1/object/public/imagens_padrao/atualizarimagem.jpg',
                                      )}\" style=\"height: 50px; width: auto;\">    </div><hr style=\" margin: 0 auto; border: 1px solid #d6d6d6;\"><br>';
                                      FFAppState().cabecalhoLaudoEditor =
                                          valueOrDefault<String>(
                                        '<p style=\"line-height: 0.5;\"><strong>Data do Laudo:</strong> ${valueOrDefault<String>(
                                          dateTimeFormat(
                                            "yMd",
                                            getCurrentTimestamp,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          'Sem data',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Nome do Responsável:</strong> ${valueOrDefault<String>(
                                          FFAppState()
                                              .dadosLaudo
                                              .first
                                              .responsavel,
                                          'Sem daos',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Nome do Animal:</strong> ${valueOrDefault<String>(
                                          FFAppState()
                                              .dadosLaudo
                                              .first
                                              .paciente,
                                          'Sem daos',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Espécie:</strong>  ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.especie,
                                          'Sem daos',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Raça:</strong> ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.raca,
                                          'Sem daos',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Idade:</strong> ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.idade,
                                          'Sem daos',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Veterinário(a):</strong> ${valueOrDefault<String>(
                                          FFAppState()
                                              .dadosLaudo
                                              .first
                                              .veterinario,
                                          'Sem daos',
                                        )}</p><p style=\"line-height: 0.5;\"><strong>Clínica:</strong> ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.clinica,
                                          'Sem daos',
                                        )}</p><br>',
                                        'Sem dados',
                                      );
                                      FFAppState().conteudoLaudoEditor =
                                          '${FFAppState().cabecalhoLaudoEditor}${widget.conteudoLaudo}<br>';
                                      FFAppState().VerLaudoCabecalhoPDF =
                                          valueOrDefault<String>(
                                        '<p><strong>Data do Laudo:</strong> ${valueOrDefault<String>(
                                          dateTimeFormat(
                                            "yMd",
                                            getCurrentTimestamp,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          'Sem data',
                                        )}</p><p><strong>Nome do Responsável:</strong> ${valueOrDefault<String>(
                                          FFAppState()
                                              .dadosLaudo
                                              .first
                                              .responsavel,
                                          'Sem daos',
                                        )}</p><p><strong>Nome do Animal:</strong> ${valueOrDefault<String>(
                                          FFAppState()
                                              .dadosLaudo
                                              .first
                                              .paciente,
                                          'Sem daos',
                                        )}</p><p><strong>Espécie:</strong>  ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.especie,
                                          'Sem daos',
                                        )}</p><p><strong>Raça:</strong> ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.raca,
                                          'Sem daos',
                                        )}</p><p><strong>Idade:</strong> ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.idade,
                                          'Sem daos',
                                        )}</p><p><strong>Veterinário(a):</strong> ${valueOrDefault<String>(
                                          FFAppState()
                                              .dadosLaudo
                                              .first
                                              .veterinario,
                                          'Sem daos',
                                        )}</p><p><strong>Clínica:</strong> ${valueOrDefault<String>(
                                          FFAppState().dadosLaudo.first.clinica,
                                          'Sem daos',
                                        )}</p><br>',
                                        'Sem dados',
                                      );
                                      FFAppState().VerLaudoPDF =
                                          '${FFAppState().cabecalhoAssinaturaPDF}${FFAppState().conteudoLaudoEditor}</body></html>';
                                      FFAppState().loading = true;
                                      safeSetState(() {});

                                      context.pushNamed(
                                        'steps-laudo',
                                        queryParameters: {
                                          'laudo': serializeParam(
                                            '${FFAppState().cabecalhoLaudoEditor}${widget.conteudoLaudo}<br>',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'USAR ESSE MODELO',
                                    options: FFButtonOptions(
                                      width: 296.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
