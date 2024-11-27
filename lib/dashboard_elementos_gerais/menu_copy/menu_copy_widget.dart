import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_copy_model.dart';
export 'menu_copy_model.dart';

class MenuCopyWidget extends StatefulWidget {
  const MenuCopyWidget({
    super.key,
    int? identPagina,
    int? grupMenu,
  })  : identPagina = identPagina ?? 1,
        grupMenu = grupMenu ?? 1;

  final int identPagina;
  final int grupMenu;

  @override
  State<MenuCopyWidget> createState() => _MenuCopyWidgetState();
}

class _MenuCopyWidgetState extends State<MenuCopyWidget> {
  late MenuCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 300.0,
        minHeight: 100.0,
        maxWidth: 300.0,
        maxHeight: 1000.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F4F8),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4F8),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                        'MENU',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(() => _model.mrDashboardHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mrDashboardHovered = false);
                  }),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'HomePage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          _model.mrDashboardHovered
                              ? const Color(0xFFFFCA9B)
                              : FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.space_dashboard_rounded,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 18.0,
                            ),
                            Text(
                              'Dashboard',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(() => _model.mrCentralDeLaudosHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mrCentralDeLaudosHovered = false);
                  }),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.submenuLaudos = !_model.submenuLaudos;
                      safeSetState(() {});
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          _model.mrCentralDeLaudosHovered
                              ? const Color(0xFFFFCA9B)
                              : FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.content_paste,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 18.0,
                                ),
                                Text(
                                  'Central de Laudos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 8.0)),
                            ),
                            if (_model.submenuLaudos)
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                            if (!_model.submenuLaudos)
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                if (_model.submenuLaudos)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mrNovoLaudoHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(() => _model.mrNovoLaudoHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().dadosLaudo = [];
                            safeSetState(() {});

                            context.pushNamed(
                              'novo-laudo',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrNovoLaudoHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.add_box,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Criar novo laudo',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrConfigurarCabecalhoHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(() =>
                              _model.mrConfigurarCabecalhoHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'LayoutLaudo',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrConfigurarCabecalhoHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.document_scanner_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Configurar layout do laudo',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrFrasesELaudosHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrFrasesELaudosHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Minhas_Frases_e_Laudos');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrFrasesELaudosHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.edit_note,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Minhas frases e laudos',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrLaudosEmAndamentoHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrLaudosEmAndamentoHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Laudos_em_Andamento');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrLaudosEmAndamentoHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.edit_document,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Laudos em andamento',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrLaudosConcludosHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrLaudosConcludosHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Laudos_Concluidos');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrLaudosConcludosHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        3.0, 0.0, 0.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.fileAlt,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                  Text(
                                    'Laudos concluídos',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(
                        () => _model.mrCentralAdministrativaHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(
                        () => _model.mrCentralAdministrativaHovered = false);
                  }),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.submenuAdministrativo =
                          !_model.submenuAdministrativo;
                      safeSetState(() {});
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          _model.mrCentralAdministrativaHovered
                              ? const Color(0xFFFFCA9B)
                              : FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.card_travel_sharp,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 18.0,
                                ),
                                Text(
                                  'Central administrativa',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 8.0)),
                            ),
                            if (_model.submenuAdministrativo)
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                            if (!_model.submenuAdministrativo)
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                if (_model.submenuAdministrativo)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrListarResponsaveisHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrListarResponsaveisHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('responsaveis');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrListarResponsaveisHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.person_2,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Responsáveis',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrListarPacientesHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrListarPacientesHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('pacientes');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrListarPacientesHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.pets,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Pacientes',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mrListarVetHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(() => _model.mrListarVetHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('veterinarios');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrListarVetHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.userNurse,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Veterinários',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.mrListarClinicasHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrListarClinicasHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('clinicas');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrListarClinicasHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.clinicMedical,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                  Text(
                                    'Clínicas',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(
                        () => _model.mrCentralFinanceiraHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(
                        () => _model.mrCentralFinanceiraHovered = false);
                  }),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Centra_financeira');
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          _model.mrCentralFinanceiraHovered
                              ? const Color(0xFFFFCA9B)
                              : FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.bar_chart,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 18.0,
                                ),
                                Text(
                                  'Central financeira',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 8.0)),
                            ),
                            if (_model.submenuFinanceiro)
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                            if (!_model.submenuFinanceiro)
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(() => _model.mrConfiguracoesHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mrConfiguracoesHovered = false);
                  }),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.submenuConfiguracoes =
                          !_model.submenuConfiguracoes;
                      safeSetState(() {});
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          _model.mrConfiguracoesHovered
                              ? const Color(0xFFFFCA9B)
                              : FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.settings_sharp,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 18.0,
                                ),
                                Text(
                                  'Configurações',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 8.0)),
                            ),
                            if (_model.submenuConfiguracoes)
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                            if (!_model.submenuConfiguracoes)
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 24.0,
                              ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                if (_model.submenuConfiguracoes)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mrMinhaContaHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mrMinhaContaHovered = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Minha_Conta');
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mrMinhaContaHovered
                                    ? const Color(0xFFFFCA9B)
                                    : const Color(0xFFF1F4F8),
                                const Color(0xFFF1F4F8),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.manage_accounts_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Minha conta',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(() => _model.mrSairHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mrSairHovered = false);
                  }),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed('login');
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          _model.mrSairHovered
                              ? const Color(0xFFFFCA9B)
                              : FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.power_settings_new_outlined,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 18.0,
                            ),
                            Text(
                              'Sair',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
