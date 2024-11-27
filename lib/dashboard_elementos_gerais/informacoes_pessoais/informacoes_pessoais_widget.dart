import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'informacoes_pessoais_model.dart';
export 'informacoes_pessoais_model.dart';

class InformacoesPessoaisWidget extends StatefulWidget {
  const InformacoesPessoaisWidget({super.key});

  @override
  State<InformacoesPessoaisWidget> createState() =>
      _InformacoesPessoaisWidgetState();
}

class _InformacoesPessoaisWidgetState extends State<InformacoesPessoaisWidget> {
  late InformacoesPessoaisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformacoesPessoaisModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('Minha_Conta');
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 90.0,
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: FutureBuilder<List<UsersRow>>(
            future: UsersTable().querySingleRow(
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
              List<UsersRow> rowUsersRowList = snapshot.data!;

              final rowUsersRow =
                  rowUsersRowList.isNotEmpty ? rowUsersRowList.first : null;

              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 56.0,
                            height: 56.0,
                            decoration: const BoxDecoration(
                              color: Color(0x9AEE8B60),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              valueOrDefault<String>(
                                rowUsersRow?.fotoUrl,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/easy-laudos-projeto-f1bbmd/assets/qg8vuisiw8ay/perfil_vazio.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          rowUsersRow?.nome,
                          'Sem Nome',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                ].divide(const SizedBox(width: 12.0)),
              );
            },
          ),
        ),
      ),
    );
  }
}
