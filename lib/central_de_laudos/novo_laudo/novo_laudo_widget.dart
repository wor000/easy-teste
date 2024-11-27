import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/central_de_laudos/modal_ver_usar_modelo/modal_ver_usar_modelo_widget.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'novo_laudo_model.dart';
export 'novo_laudo_model.dart';

class NovoLaudoWidget extends StatefulWidget {
  const NovoLaudoWidget({super.key});

  @override
  State<NovoLaudoWidget> createState() => _NovoLaudoWidgetState();
}

class _NovoLaudoWidgetState extends State<NovoLaudoWidget> {
  late NovoLaudoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoLaudoModel());

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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: WebViewAware(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Container(
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.informacoesPessoaisModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const InformacoesPessoaisWidget(),
                      ),
                      wrapWithModel(
                        model: _model.menuModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const MenuWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: 300.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.informacoesPessoaisModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const InformacoesPessoaisWidget(),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: const MenuWidget(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 48.0),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxHeight: double.infinity,
                          ),
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.logoBotoHomeModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const LogoBotoHomeWidget(),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 45.0, 24.0, 20.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('teste');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'CENTRAL DE LAUDOS',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            ' / ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Novo Laudo',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (!_model.visualizarDadosLaudo)
                                      Flexible(
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            minWidth: 300.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 20.0, 10.0, 20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Novo Laudo',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                      Text(
                                                        'Preencha os campos abaixos para iniciar um novo laudo',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 8.0)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 8.0, 16.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          height: 100.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 250.0,
                                                            maxWidth: 900.0,
                                                          ),
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            4.0),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        TutoresRow>>(
                                                                  future: TutoresTable()
                                                                      .queryRows(
                                                                    queryFn:
                                                                        (q) =>
                                                                            q,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<TutoresRow>
                                                                        dropownResponsavelTutoresRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                              .dropownResponsavelValueController ??=
                                                                          FormFieldController<
                                                                              String>(
                                                                        _model.dropownResponsavelValue ??=
                                                                            '',
                                                                      ),
                                                                      options: List<String>.from(dropownResponsavelTutoresRowList
                                                                          .sortedList(
                                                                              keyOf: (e) => e
                                                                                  .nome!,
                                                                              desc:
                                                                                  false)
                                                                          .map((e) => e
                                                                              .id
                                                                              .toString())
                                                                          .toList()),
                                                                      optionLabels: dropownResponsavelTutoresRowList
                                                                          .sortedList(
                                                                              keyOf: (e) => e.nome!,
                                                                              desc: false)
                                                                          .map((e) => e.nome)
                                                                          .withoutNulls
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dropownResponsavelValue =
                                                                                val);
                                                                        _model.idTutor =
                                                                            valueOrDefault<int>(
                                                                          int.parse(
                                                                              (_model.dropownResponsavelValue!)),
                                                                          0,
                                                                        );
                                                                        _model.responsavelNome =
                                                                            valueOrDefault<String>(
                                                                          dropownResponsavelTutoresRowList
                                                                              .where((e) => valueOrDefault<bool>(
                                                                                    _model.idTutor ==
                                                                                        valueOrDefault<int>(
                                                                                          e.id,
                                                                                          0,
                                                                                        ),
                                                                                    true,
                                                                                  ))
                                                                              .toList()
                                                                              .first
                                                                              .nome,
                                                                          'Sem dado',
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          56.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Responsável',
                                                                      searchHintText:
                                                                          'Pesquisar responsável',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          const Color(
                                                                              0xFFF2F3F6),
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'responsaveis');
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Adicionar Responsável',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 10.0,
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
                                                      ),
                                                      Flexible(
                                                        child: Container(
                                                          height: 100.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 250.0,
                                                            maxWidth: 900.0,
                                                          ),
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        PetsRow>>(
                                                                  future: PetsTable()
                                                                      .queryRows(
                                                                    queryFn: (q) =>
                                                                        q.eqOrNull(
                                                                      'tutor_id',
                                                                      valueOrDefault<
                                                                          int>(
                                                                        _model
                                                                            .idTutor,
                                                                        0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<PetsRow>
                                                                        dropdrownPacientePetsRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return FlutterFlowDropDown<
                                                                        int>(
                                                                      controller: _model
                                                                              .dropdrownPacienteValueController ??=
                                                                          FormFieldController<
                                                                              int>(
                                                                        _model.dropdrownPacienteValue ??=
                                                                            0,
                                                                      ),
                                                                      options: List<int>.from(dropdrownPacientePetsRowList
                                                                          .map((e) =>
                                                                              e.id)
                                                                          .toList()),
                                                                      optionLabels: dropdrownPacientePetsRowList.isNotEmpty
                                                                          ? dropdrownPacientePetsRowList
                                                                              .map((e) => valueOrDefault<
                                                                                      String>(
                                                                                    e.nome,
                                                                                    '0',
                                                                                  ))
                                                                              .toList()
                                                                          : [
                                                                              'Sem dados'
                                                                            ],
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dropdrownPacienteValue =
                                                                                val);
                                                                        _model.resutadoPet =
                                                                            await PetsViewTable().queryRows(
                                                                          queryFn: (q) =>
                                                                              q.eqOrNull(
                                                                            'id',
                                                                            valueOrDefault<int>(
                                                                              dropdrownPacientePetsRowList.where((e) => _model.dropdrownPacienteValue == e.id).toList().first.id,
                                                                              0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                        _model.pacienteNome =
                                                                            valueOrDefault<String>(
                                                                          dropdrownPacientePetsRowList
                                                                              .where((e) => _model.dropdrownPacienteValue == e.id)
                                                                              .toList()
                                                                              .first
                                                                              .nome,
                                                                          'Sem dados',
                                                                        );
                                                                        _model.pacienteTipo =
                                                                            valueOrDefault<String>(
                                                                          dropdrownPacientePetsRowList
                                                                              .where((e) => _model.dropdrownPacienteValue == e.id)
                                                                              .toList()
                                                                              .first
                                                                              .sexo,
                                                                          'Sem dados',
                                                                        );
                                                                        _model.especie =
                                                                            valueOrDefault<String>(
                                                                          dropdrownPacientePetsRowList
                                                                              .where((e) => _model.dropdrownPacienteValue == e.id)
                                                                              .toList()
                                                                              .first
                                                                              .especie,
                                                                          'Sem dados',
                                                                        );
                                                                        _model.raca =
                                                                            valueOrDefault<String>(
                                                                          _model
                                                                              .resutadoPet
                                                                              ?.first
                                                                              .racaNome,
                                                                          'Sem dados',
                                                                        );
                                                                        _model.idade =
                                                                            functions.idade(valueOrDefault<String>(
                                                                          dropdrownPacientePetsRowList
                                                                              .where((e) => _model.dropdrownPacienteValue == e.id)
                                                                              .toList()
                                                                              .first
                                                                              .nascimento,
                                                                          'Sem dados',
                                                                        ));
                                                                        _model.idPaciente =
                                                                            _model.dropdrownPacienteValue;
                                                                        safeSetState(
                                                                            () {});

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          56.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Paciente',
                                                                      searchHintText:
                                                                          'Pesquisar paciente',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          const Color(
                                                                              0xFFF2F3F6),
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'pacientes');
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Adicionar Paciente',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 10.0,
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
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 0.0, 16.0,
                                                          16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          height: 100.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 250.0,
                                                            maxWidth: 900.0,
                                                          ),
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        VeterinariosRow>>(
                                                                  future: VeterinariosTable()
                                                                      .queryRows(
                                                                    queryFn:
                                                                        (q) =>
                                                                            q,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<VeterinariosRow>
                                                                        dropdownVeterinarioVeterinariosRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return FlutterFlowDropDown<
                                                                        int>(
                                                                      controller: _model
                                                                              .dropdownVeterinarioValueController ??=
                                                                          FormFieldController<
                                                                              int>(
                                                                        _model.dropdownVeterinarioValue ??=
                                                                            0,
                                                                      ),
                                                                      options: List<int>.from(dropdownVeterinarioVeterinariosRowList
                                                                          .map((e) => valueOrDefault<int>(
                                                                                e.id,
                                                                                0,
                                                                              ))
                                                                          .toList()),
                                                                      optionLabels: dropdownVeterinarioVeterinariosRowList
                                                                          .map((e) => valueOrDefault<String>(
                                                                                e.nome,
                                                                                'Sem dados',
                                                                              ))
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dropdownVeterinarioValue =
                                                                                val);
                                                                        _model.veterinario =
                                                                            valueOrDefault<String>(
                                                                          dropdownVeterinarioVeterinariosRowList
                                                                              .where((e) => _model.dropdownVeterinarioValue == e.id)
                                                                              .toList()
                                                                              .first
                                                                              .nome,
                                                                          'Sem nome',
                                                                        );
                                                                        _model.idVeterinario =
                                                                            _model.dropdownVeterinarioValue;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          56.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Veterinário',
                                                                      searchHintText:
                                                                          'Pesquisar veterinário',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          const Color(
                                                                              0xFFF2F3F6),
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'veterinarios');
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Adicionar Veterinário',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 10.0,
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
                                                      ),
                                                      Flexible(
                                                        child: Container(
                                                          height: 100.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 250.0,
                                                            maxWidth: 900.0,
                                                          ),
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        ClinicasRow>>(
                                                                  future: ClinicasTable()
                                                                      .queryRows(
                                                                    queryFn:
                                                                        (q) =>
                                                                            q,
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<ClinicasRow>
                                                                        dropdownClinicaClinicasRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    return FlutterFlowDropDown<
                                                                        int>(
                                                                      controller: _model
                                                                              .dropdownClinicaValueController ??=
                                                                          FormFieldController<
                                                                              int>(
                                                                        _model.dropdownClinicaValue ??=
                                                                            0,
                                                                      ),
                                                                      options: List<int>.from(dropdownClinicaClinicasRowList
                                                                          .map((e) => valueOrDefault<int>(
                                                                                e.id,
                                                                                0,
                                                                              ))
                                                                          .toList()),
                                                                      optionLabels: dropdownClinicaClinicasRowList
                                                                          .map((e) => valueOrDefault<String>(
                                                                                e.nome,
                                                                                '0',
                                                                              ))
                                                                          .toList(),
                                                                      onChanged:
                                                                          (val) async {
                                                                        safeSetState(() =>
                                                                            _model.dropdownClinicaValue =
                                                                                val);
                                                                        _model.clinica =
                                                                            valueOrDefault<String>(
                                                                          dropdownClinicaClinicasRowList
                                                                              .where((e) =>
                                                                                  _model.dropdownClinicaValue ==
                                                                                  valueOrDefault<int>(
                                                                                    e.id,
                                                                                    0,
                                                                                  ))
                                                                              .toList()
                                                                              .first
                                                                              .nome,
                                                                          'Sem nome',
                                                                        );
                                                                        _model.idClinica =
                                                                            _model.dropdownClinicaValue;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          56.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Clínica',
                                                                      searchHintText:
                                                                          'Pesquisar clínica',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      fillColor:
                                                                          const Color(
                                                                              0xFFF2F3F6),
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          8.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'clinicas');
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        'Adicionar Clínica',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 10.0,
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
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 10.0,
                                                          16.0, 24.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          FFAppState()
                                                              .addToDadosLaudo(
                                                                  DadosLaudoStruct(
                                                            responsavel: _model
                                                                .responsavelNome,
                                                            paciente: _model
                                                                .pacienteNome,
                                                            tipo: _model
                                                                .pacienteTipo,
                                                            veterinario: _model
                                                                .veterinario,
                                                            clinica:
                                                                _model.clinica,
                                                            especie:
                                                                _model.especie,
                                                            raca: _model.raca,
                                                            idade: _model.idade,
                                                            idResponsavel:
                                                                _model.idTutor,
                                                            idPaciente:
                                                                valueOrDefault<
                                                                    int>(
                                                              _model.idPaciente,
                                                              0,
                                                            ),
                                                            idClinica:
                                                                valueOrDefault<
                                                                    int>(
                                                              _model.idClinica,
                                                              0,
                                                            ),
                                                            idVeterinario:
                                                                valueOrDefault<
                                                                    int>(
                                                              _model
                                                                  .idVeterinario,
                                                              0,
                                                            ),
                                                            idUser:
                                                                currentUserUid,
                                                          ));
                                                          safeSetState(() {});
                                                          _model.visualizarDadosLaudo =
                                                              true;
                                                          safeSetState(() {});
                                                        },
                                                        text: 'Criar Laudo',
                                                        icon: const Icon(
                                                          Icons.add,
                                                          size: 15.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 48.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      36.0,
                                                                      0.0,
                                                                      36.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              const Color(0xFF08C18A),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFF08C18A),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          hoverColor:
                                                              const Color(0xFF029F71),
                                                          hoverBorderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFF029F71),
                                                            width: 1.0,
                                                          ),
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
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
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if (_model.visualizarDadosLaudo)
                                          Flexible(
                                            child: Container(
                                              constraints: const BoxConstraints(
                                                minWidth: 300.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 24.0, 10.0, 24.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .folder,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                Text(
                                                                  'Dados do laudo',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                          Divider(
                                                            thickness: 2.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          70.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minWidth:
                                                                            150.0,
                                                                        maxWidth:
                                                                            480.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Responsável:',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Pedro Camargo',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          70.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minWidth:
                                                                            100.0,
                                                                        maxWidth:
                                                                            480.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Paciente:',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Sofia',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          70.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minWidth:
                                                                            150.0,
                                                                        maxWidth:
                                                                            480.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Tipo:',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Fêmea',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          70.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minWidth:
                                                                            150.0,
                                                                        maxWidth:
                                                                            480.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Veterinário:',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Vandre Nicolau',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          70.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minWidth:
                                                                            150.0,
                                                                        maxWidth:
                                                                            480.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Clínica:',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Particular',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                const Icon(
                                                                  Icons
                                                                      .visibility,
                                                                  color: Color(
                                                                      0xFFB0B0B0),
                                                                  size: 24.0,
                                                                ),
                                                                const Icon(
                                                                  Icons
                                                                      .edit_note,
                                                                  color: Color(
                                                                      0xFFB0B0B0),
                                                                  size: 24.0,
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
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
                                      ].divide(const SizedBox(width: 16.0)),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (_model.visualizarDadosLaudo)
                                        Flexible(
                                          child: Container(
                                            constraints: const BoxConstraints(
                                              minWidth: 300.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 24.0, 10.0, 24.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .folder,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Dados do laudo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        70.0,
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      minWidth:
                                                                          150.0,
                                                                      maxWidth:
                                                                          480.0,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Responsável:',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              FFAppState().dadosLaudo.first.responsavel,
                                                                              'Sem dados',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        70.0,
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      minWidth:
                                                                          100.0,
                                                                      maxWidth:
                                                                          480.0,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Paciente:',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              FFAppState().dadosLaudo.first.paciente,
                                                                              'Sem dados',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        70.0,
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      minWidth:
                                                                          150.0,
                                                                      maxWidth:
                                                                          480.0,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Tipo:',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              FFAppState().dadosLaudo.first.tipo,
                                                                              'Sem dados',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        70.0,
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      minWidth:
                                                                          150.0,
                                                                      maxWidth:
                                                                          480.0,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Veterinário:',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              FFAppState().dadosLaudo.first.veterinario,
                                                                              'Sem dados',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        70.0,
                                                                    constraints:
                                                                        const BoxConstraints(
                                                                      minWidth:
                                                                          150.0,
                                                                      maxWidth:
                                                                          480.0,
                                                                    ),
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Clínica:',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FFAppState().dadosLaudo.first.clinica,
                                                                            'Sem dados',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.visualizarDadosLaudo =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .dropownResponsavelValueController
                                                                        ?.reset();
                                                                    _model
                                                                        .dropdrownPacienteValueController
                                                                        ?.reset();
                                                                    _model
                                                                        .dropdownVeterinarioValueController
                                                                        ?.reset();
                                                                    _model
                                                                        .dropdownClinicaValueController
                                                                        ?.reset();
                                                                  });
                                                                  FFAppState()
                                                                      .dadosLaudo = [];
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: const Icon(
                                                                  Icons
                                                                      .edit_note,
                                                                  color: Color(
                                                                      0xFFB0B0B0),
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 12.0)),
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
                                    ].divide(const SizedBox(width: 16.0)),
                                  ),
                                ),
                                if (_model.visualizarDadosLaudo)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 16.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            constraints: const BoxConstraints(
                                              minWidth: 300.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 18.0, 10.0, 18.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'Selecione uma das opções abaixo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        if (isiOS)
                                                          FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text:
                                                                'Laudo clicável',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 300.0,
                                                              height: 60.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: _model
                                                                      .booLLaudoClicavel
                                                                  ? const Color(
                                                                      0xFFEE5C02)
                                                                  : const Color(
                                                                      0xFFDFAD83),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              hoverColor: const Color(
                                                                  0xFFEE5C02),
                                                            ),
                                                          ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.booLLaudoClicavel =
                                                                false;
                                                            _model.boolModeloMeusLaudos =
                                                                true;
                                                            _model.boolModeloLaudo =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          text:
                                                              'Modelos de laudo',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 300.0,
                                                            height: 60.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: _model
                                                                    .boolModeloMeusLaudos
                                                                ? const Color(
                                                                    0xFFEE5C02)
                                                                : const Color(
                                                                    0xFFDFAD83),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            hoverColor: const Color(
                                                                0xFFEE5C02),
                                                          ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.boolModeloLaudo =
                                                                true;
                                                            _model.booLLaudoClicavel =
                                                                false;
                                                            _model.boolModeloMeusLaudos =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          text: 'Meus laudos',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 300.0,
                                                            height: 60.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: _model
                                                                    .boolModeloLaudo
                                                                ? const Color(
                                                                    0xFFEE5C02)
                                                                : const Color(
                                                                    0xFFDFAD83),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            hoverColor: const Color(
                                                                0xFFEE5C02),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 8.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 24.0, 10.0, 24.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    'Selecione uma das opções abaixo',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  24.0,
                                                                  16.0,
                                                                  24.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            onEnter:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mrLaudoclicavelHovered =
                                                                      true);
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mrLaudoclicavelHovered =
                                                                      false);
                                                            }),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.laudoClicavel =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                height: 60.0,
                                                                constraints:
                                                                    const BoxConstraints(
                                                                  minWidth:
                                                                      50.0,
                                                                  maxWidth:
                                                                      300.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: _model
                                                                          .mrLaudoclicavelHovered
                                                                      ? const Color(
                                                                          0xFFEE5C02)
                                                                      : const Color(
                                                                          0xFFF16712),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Laudo clicável',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            onEnter:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mrModeloLaudoHovered =
                                                                      true);
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mrModeloLaudoHovered =
                                                                      false);
                                                            }),
                                                            child: Container(
                                                              height: 60.0,
                                                              constraints:
                                                                  const BoxConstraints(
                                                                minWidth: 50.0,
                                                                maxWidth: 300.0,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: _model
                                                                        .mrModeloLaudoHovered
                                                                    ? const Color(
                                                                        0xFFEE5C02)
                                                                    : const Color(
                                                                        0xFFF16712),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Modelos de laudo',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          MouseRegion(
                                                            opaque: false,
                                                            cursor: MouseCursor
                                                                    .defer ??
                                                                MouseCursor
                                                                    .defer,
                                                            onEnter:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mrMeusLaudosHovered =
                                                                      true);
                                                            }),
                                                            onExit:
                                                                ((event) async {
                                                              safeSetState(() =>
                                                                  _model.mrMeusLaudosHovered =
                                                                      false);
                                                            }),
                                                            child: Container(
                                                              height: 60.0,
                                                              constraints:
                                                                  const BoxConstraints(
                                                                minWidth: 50.0,
                                                                maxWidth: 300.0,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: _model
                                                                        .mrMeusLaudosHovered
                                                                    ? const Color(
                                                                        0xFFEE5C02)
                                                                    : const Color(
                                                                        0xFFF16712),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Meus laudos',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 16.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                if (_model.laudoClicavel)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 16.0),
                                          child: Container(
                                            constraints: const BoxConstraints(
                                              minWidth: 300.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 24.0, 10.0, 24.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'Selecione o tipo de laudo desejado',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(32.0, 0.0,
                                                                32.0, 8.0),
                                                    child: Text(
                                                      'Selecione uma opções entre um laudo parão ou um laudo gestacional',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                24.0,
                                                                16.0,
                                                                24.0),
                                                    child: Wrap(
                                                      spacing: 16.0,
                                                      runSpacing: 12.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.laudoPadrao =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: Container(
                                                            height: 60.0,
                                                            constraints:
                                                                const BoxConstraints(
                                                              minWidth: 50.0,
                                                              maxWidth: 250.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                _model.laudoPadrao
                                                                    ? const Color(
                                                                        0x65F16712)
                                                                    : const Color(
                                                                        0xFFEAEAEA),
                                                                const Color(
                                                                    0xFFEAEAEA),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.laudoPadrao
                                                                      ? const Color(
                                                                          0xFFF16712)
                                                                      : const Color(
                                                                          0xFFC4C4C4),
                                                                  const Color(
                                                                      0xFFC4C4C4),
                                                                ),
                                                                width: 3.0,
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Laudo abdominal padrão',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                if (_model
                                                                    .laudoPadrao)
                                                                  const Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_outlined,
                                                                      color: Color(
                                                                          0xFF08C18A),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                              ].divide(const SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 60.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 250.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Laudo gestacional padrão',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
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
                                      ),
                                    ].divide(const SizedBox(width: 16.0)),
                                  ),
                                if (_model.laudoPadrao)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 16.0),
                                          child: Container(
                                            constraints: const BoxConstraints(
                                              minWidth: 300.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 24.0, 10.0, 24.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'Personalização do laudo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(32.0, 0.0,
                                                                32.0, 8.0),
                                                    child: Text(
                                                      'Selecione uma ou mais opções abaixo para personalizar o item no laudo final. Caso não queira personalizar o laudo, será elaborado um laudo padrão que descreve os órgãos em conformidade com a morfologia de um órgão saudável.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  32.0,
                                                                  0.0,
                                                                  32.0,
                                                                  16.0),
                                                      child: Text(
                                                        'Lembre-se: Cada caso é único e pode ser necessário personalizar o laudo para fornecer informações precisas e completas.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    24.0,
                                                                    16.0,
                                                                    24.0),
                                                        child: Container(
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .warning_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Lembre-se: Cada caso é único e pode ser necessário personalizar o laudo para fornecer informações precisas e completas.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    24.0,
                                                                    16.0,
                                                                    24.0),
                                                        child: Container(
                                                          height: 90.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .warning_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    'Lembre-se: Cada caso é único e pode ser necessário personalizar o laudo para fornecer informações precisas e completas.',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                24.0,
                                                                16.0,
                                                                24.0),
                                                    child: Wrap(
                                                      spacing: 16.0,
                                                      runSpacing: 12.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 120.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Bexiga',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              const Icon(
                                                                Icons
                                                                    .check_outlined,
                                                                color: Color(
                                                                    0xFF08C18A),
                                                                size: 20.0,
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 100.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Rins',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 100.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Baço',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 120.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Fígado',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 130.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Sist. Biliar',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 180.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'T.Gastrointestinal',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 130.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Pâncreas',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 130.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Adrenais',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 150.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Útero e Ovário',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 150.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Linfonodos',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50.0,
                                                          constraints:
                                                              const BoxConstraints(
                                                            minWidth: 50.0,
                                                            maxWidth: 150.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFEAEAEA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFC4C4C4),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Observações',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
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
                                      ),
                                    ].divide(const SizedBox(width: 16.0)),
                                  ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.boolModeloLaudo)
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 3.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 12.0, 0.0),
                                                  child: Text(
                                                    'Listagem de Laudos Cadastrados',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 12.0, 12.0),
                                                  child: Text(
                                                    'Pesquise através dos modelos já existentes em nosso sistema.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 400.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController,
                                                          focusNode: _model
                                                              .textFieldFocusNode,
                                                          autofocus: false,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            alignLabelWithHint:
                                                                true,
                                                            hintText:
                                                                'Procurar...',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .textControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.search,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 32.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 600.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: FutureBuilder<
                                                        List<LaudosModelosRow>>(
                                                      future:
                                                          LaudosModelosTable()
                                                              .queryRows(
                                                        queryFn: (q) => q.order(
                                                            'created_at'),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<LaudosModelosRow>
                                                            containerLaudosModelosRowList =
                                                            snapshot.data!;

                                                        return SizedBox(
                                                          height: 200.0,
                                                          child: Builder(
                                                            builder: (context) {
                                                              final generate =
                                                                  containerLaudosModelosRowList
                                                                      .toList();

                                                              return FlutterFlowDataTable<
                                                                  LaudosModelosRow>(
                                                                controller: _model
                                                                    .paginatedDataTableController,
                                                                data: generate,
                                                                columnsBuilder:
                                                                    (onSortChanged) =>
                                                                        [
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Adicionado em',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Título',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Resumo',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Categoria',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Container(),
                                                                    ),
                                                                  ),
                                                                ],
                                                                dataRowBuilder: (generateItem,
                                                                        generateIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                                  color:
                                                                      WidgetStateProperty
                                                                          .all(
                                                                    generateIndex %
                                                                                2 ==
                                                                            0
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                  ),
                                                                  cells: [
                                                                    Text(
                                                                      dateTimeFormat(
                                                                        "d/M/y",
                                                                        generateItem
                                                                            .createdAt,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        generateItem
                                                                            .tituloLaudo,
                                                                        'titulo',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        generateItem
                                                                            .resumoLaudo,
                                                                        'resumo',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        generateItem
                                                                            .categoriaLaudo,
                                                                        'categoria',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            enableDrag:
                                                                                false,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () => FocusScope.of(context).unfocus(),
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: SizedBox(
                                                                                      height: double.infinity,
                                                                                      child: ModalVerUsarModeloWidget(
                                                                                        conteudoLaudo: valueOrDefault<String>(
                                                                                          generateItem.conteudoLaudo,
                                                                                          'titulo',
                                                                                        ),
                                                                                        titulo: valueOrDefault<String>(
                                                                                          generateItem.tituloLaudo,
                                                                                          'titulo',
                                                                                        ),
                                                                                        id: valueOrDefault<int>(
                                                                                          generateItem.id,
                                                                                          0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .remove_red_eye,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]
                                                                      .map((c) =>
                                                                          DataCell(
                                                                              c))
                                                                      .toList(),
                                                                ),
                                                                paginated: true,
                                                                selectable:
                                                                    false,
                                                                hidePaginator:
                                                                    false,
                                                                showFirstLastButtons:
                                                                    false,
                                                                headingRowHeight:
                                                                    56.0,
                                                                dataRowHeight:
                                                                    48.0,
                                                                columnSpacing:
                                                                    20.0,
                                                                headingRowColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                addHorizontalDivider:
                                                                    true,
                                                                addTopAndBottomDivider:
                                                                    false,
                                                                hideDefaultHorizontalDivider:
                                                                    true,
                                                                horizontalDividerColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                horizontalDividerThickness:
                                                                    1.0,
                                                                addVerticalDivider:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
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
        ),
      ),
    );
  }
}
